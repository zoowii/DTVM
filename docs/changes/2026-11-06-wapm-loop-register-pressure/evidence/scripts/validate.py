from pathlib import Path
import json,collections,hashlib,random,statistics
p=Path('work/wapm-followup');expected={'screen-r5':(20,3,5),'causal-r7':(3,8,7),'selfcmp-r9':(6,3,9),'confirm-r21':(2,5,21),'pure-loop-r15':(10,4,15),'final-r15':(5,4,15),'phases-r7':(1,4,7)};out={}
for folder,(nc,nv,nr) in expected.items():
 rs=[json.loads(l) for l in (p/folder/'samples.jsonl').read_text().splitlines()];assert len(rs)==nc*nv*(nr+1),(folder,len(rs));keys={(r.get('case','pi1000'),r['variant'],r['round']) for r in rs};assert len(keys)==len(rs);assert all(r['exit']==0 for r in rs)
 g=collections.defaultdict(list)
 for r in rs:g[r.get('case','pi1000'),r['variant']].append(r)
 assert len(g)==nc*nv
 for cells in g.values():assert sorted(r['round'] for r in cells)==list(range(-1,nr))
 hashes={c:len({r['stdout_sha256'] for r in rs if r.get('case','pi1000')==c}) for c in {r.get('case','pi1000') for r in rs}}
 out[folder]={'processes':len(rs),'measured':sum(r['round']>=0 for r in rs),'complete_unique_cells_and_zero_exits':True,'distinct_stdout_hashes_by_case':hashes}
 for c,n in hashes.items():
  if c in ['fortune','uuid']:continue  # nondeterministic guest output
  if c=='fib_iter_dev':
   for r in rs:
    if r.get('case')==c:
     expected=b'832040\n' if r['variant']=='wt45' else b'0xcb228:i64\n'
     assert r['stdout_sha256']==hashlib.sha256(expected).hexdigest()
   continue
  assert n==1,(folder,c,n)
(p/'validation.json').write_text(json.dumps(out,indent=2));print(json.dumps(out,indent=2))
rs=[json.loads(l) for l in (p/'final-r15/samples.jsonl').read_text().splitlines()];g=collections.defaultdict(dict)
for r in rs:
 if r['round']>=0:g[r['case'],r['variant']][r['round']]=r['wall_ms']
out={}
for c in sorted({c for c,v in g}):
 out[c]={}
 for ref in ['guard-control','wt45']:
  ratios=[g[c,'guard-loop'][i]/g[c,ref][i] for i in range(15)];rng=random.Random(2026110607);b=sorted(statistics.median(rng.choices(ratios,k=15)) for _ in range(10000));out[c][ref]={'paired_percent':100*(statistics.median(ratios)-1),'CI95_percent':[100*(b[249]-1),100*(b[9749]-1)]}
(p/'final-controls.json').write_text(json.dumps(out,indent=2));print('final controls',json.dumps(out,indent=2))
