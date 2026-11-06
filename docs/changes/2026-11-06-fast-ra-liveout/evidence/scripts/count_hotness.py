from pathlib import Path
import subprocess,os,struct,json,hashlib
root=Path.cwd();out=root/'work/fast-ra-liveout';text=(root/'work/shortcase/pi.wat').read_text();pos=text.index(' (global ');text=text[:pos]+' (global $research_calls (mut i64) (i64.const 0))\n (global $research_steps (mut i64) (i64.const 0))\n'+text[pos:]
a=text.index(' (func $51 ');b=text.index('\n (func ',a+2);body=text[a:b].replace(' (func $51 ',' (func $research_fmod_body ',1);needle='    (loop $label$13\n';assert body.count(needle)==1;body=body.replace(needle,needle+'     (global.set $research_steps (i64.add (global.get $research_steps) (i64.const 1)))\n');text=text[:a]+body+text[b:]
a=text.index(' (func $2 ');b=text.index('\n (func ',a+2);body=text[a:b];needle='   (drop\n    (call $18\n';assert body.count(needle)==1;body=body.replace(needle,'   (call $research_counts_finish)\n'+needle);text=text[:a]+body+text[b:]
helpers='''
 (func $51 (param $x f64) (param $y f64) (result f64)
  (global.set $research_calls (i64.add (global.get $research_calls) (i64.const 1)))
  (call $research_fmod_body (local.get $x) (local.get $y)))
 (func $research_counts_finish
  (i64.store (i32.const 16) (global.get $research_calls))
  (i64.store (i32.const 24) (global.get $research_steps))
  (i32.store (i32.const 32) (i32.const 16))
  (i32.store (i32.const 36) (i32.const 16))
  (if (call $fimport$10 (i32.const 2) (i32.const 32) (i32.const 1) (i32.const 48)) (then (unreachable))))
''';text=text[:text.rfind(')')]+helpers+text[text.rfind(')'):];wat=out/'pi-counts.wat';wasm=out/'pi-counts.wasm';wat.write_text(text);subprocess.run(['wasm-as',str(wat),'-o',str(wasm)],check=True)
vs={'main':root/'work/wapm-followup/dtvm-main','wt45':root/'benchmarks/paper/runtimes/wasmtime-45.0.0/out/wasmtime'};rows=[]
for n in [1,10,100,1000]:
 for v,b in vs.items():
  cmd=['taskset','-c','0',str(b)]+(['run','-C','cache=n',str(wasm),str(n)] if v=='wt45' else ['-m','multipass','--enable-multipass-lazy',str(wasm),'--args',str(n)])
  r=subprocess.run(cmd,capture_output=True,timeout=60);assert r.returncode==0,(v,n,r.stderr);assert len(r.stderr)==16,(v,n,r.stderr);calls,steps=struct.unpack('<QQ',r.stderr);row={'argument':n,'engine':v,'calls':calls,'long_division_loop_iterations':steps,'stdout':r.stdout.decode(),'exit':r.returncode};rows.append(row);print(row,flush=True)
for n in [1,10,100,1000]:
 pair=[r for r in rows if r['argument']==n];assert pair[0]['calls']==pair[1]['calls'] and pair[0]['long_division_loop_iterations']==pair[1]['long_division_loop_iterations'] and pair[0]['stdout']==pair[1]['stdout']
(out/'hotness-counts.json').write_text(json.dumps({'diagnostic_only':True,'canonical_source_sha256':hashlib.sha256((root/'benchmarks/paper/benchmarks/wapm/pi.wasm').read_bytes()).hexdigest(),'derived_sha256':hashlib.sha256(wasm.read_bytes()).hexdigest(),'counts':'fmod entries and selected long-division loop body entries; not runtime or performance samples','rows':rows},indent=2))
