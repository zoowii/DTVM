from pathlib import Path
import json,hashlib,collections
root=Path('work/fast-ra-liveout');expected={'pilot-r9':(6,5,9),'forward-r9':(6,6,9),'chains-r9':(6,5,9),'flags-r21':(6,5,21),'confirm-r31':(3,5,31)};out={}
for folder,(nc,nv,nr) in expected.items():
 rs=[json.loads(l) for l in (root/folder/'samples.jsonl').read_text().splitlines()];assert len(rs)==nc*nv*(nr+1);keys={(r['case'],r['variant'],r['round']) for r in rs};assert len(keys)==len(rs);assert all(r['exit']==0 for r in rs);groups=collections.defaultdict(list)
 for r in rs:groups[r['case'],r['variant']].append(r)
 for a in groups.values():assert sorted(r['round'] for r in a)==list(range(-1,nr))
 for c in {r['case'] for r in rs}:
  rows=[r for r in rs if r['case']==c]
  if c=='fib_iter_dev':
   for r in rows:
    expected=b'832040\n' if r['variant']=='wt45' else b'0xcb228:i64\n';assert r['stdout_sha256']==hashlib.sha256(expected).hexdigest()
  else:assert len({r['stdout_sha256'] for r in rows})==1,(folder,c)
 out[folder]={'processes':len(rs),'measured':sum(r['round']>=0 for r in rs),'complete_unique_cells':True,'all_zero_exit':True,'outputs_match':'byte-for-byte except fib normalized integer832040'}
(root/'validation.json').write_text(json.dumps(out,indent=2));print(json.dumps(out,indent=2))
