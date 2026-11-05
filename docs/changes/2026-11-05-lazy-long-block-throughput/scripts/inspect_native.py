from pathlib import Path
import hashlib,json,subprocess,re,collections
root=Path('work/pr-complete');out={'case':'call10000','diagnostic_only':True,'mode_dtvm':'lazy-F-ST','buffers':[],'metrics':{}}
files={v:sorted((root/('code-'+v)).glob('*.bin'),key=lambda p:int(p.name.split('-')[2])) for v in ['main','candidate']};assert all(len(ps)==3 for ps in files.values())
for i,(a,b) in enumerate(zip(files['main'],files['candidate'])):
 x=bytearray(a.read_bytes());y=bytearray(b.read_bytes());assert len(x)==len(y);offsets=[]
 if i<2:
  for off in range(2,len(x)-7):
   if x[off-2:off]==y[off-2:off]==b'\x48\xb8' and x[off:off+8]!=y[off:off+8]:x[off:off+8]=y[off:off+8]=bytes(8);offsets.append(off)
  assert len(offsets)==(1 if i==0 else 2)
 assert x==y
 out['buffers'].append({'sequence':i,'bytes':len(x),'masked_address_offsets':offsets,'matching_sha256':hashlib.sha256(x).hexdigest()})
def metrics(label,asm,size):
 rows=[]
 for l in asm.splitlines():
  m=re.match(r'^\s*([0-9a-f]+):\s+(?:[0-9a-f]{2}\s+)+\s*([a-z][a-z0-9]*)\s*(.*)$',l)
  if m:rows.append((m.group(2),m.group(3),l))
 # Instruction lines only, not objdump continuation bytes.
 frame=[r[2].strip() for r in rows if r[0].startswith('sub') and '%rsp' in r[1] and '$' in r[1]]
 out['metrics'][label]={'native_function_bytes':size,'instructions':len(rows),'direct_or_indirect_call_instructions':sum(r[0].startswith('call') for r in rows),'static_frame_memory_operand_instructions':sum(bool(re.search(r'\([^)]*%(?:rbp|rsp)',r[1])) for r in rows),'rsp_subtractions':frame,'note':'Static counts; not dynamic memory accesses. DTVM post-link JIT, Wasmtime unrelocated AOT diagnostic.'}
 preview='\n'.join(r[2].rstrip() for r in rows[:38]+rows[-18:])+'\n';(root/'asm'/(label+'-preview.asm')).write_text(preview)
p=files['candidate'][1];b=p.read_bytes();size=len(b.rstrip(b'\0'));assert b[size-1]==0xc3
asm=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64',f'--stop-address={size}',str(p)],text=True);metrics('dtvm',asm,size)
for v in ['wt45','wt49']:
 p=root/'asm'/(v+'.cwasm');nm=subprocess.check_output(['nm','-S','--defined-only',str(p)],text=True);line=next(l for l in nm.splitlines() if l.endswith('wasm[0]::function[1]'));parts=line.split();addr=int(parts[0],16);size=int(parts[1],16);asm=subprocess.check_output(['objdump','-d',f'--start-address={addr}',f'--stop-address={addr+size}',str(p)],text=True);metrics(v,asm,size)
(root/'native-validation.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out['metrics'],indent=2))
