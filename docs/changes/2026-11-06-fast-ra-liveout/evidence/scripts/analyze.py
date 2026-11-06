from pathlib import Path
import json,statistics,random,collections
root=Path('work/fast-ra-liveout');all_results={}
for folder,control in [('pilot-r9','exact-control'),('forward-r9','forward-control'),('chains-r9','chains-control'),('flags-r21','flags-control'),('confirm-r31','flags-control')]:
 p=root/folder/'samples.jsonl'
 if not p.exists():continue
 rs=[json.loads(l) for l in p.read_text().splitlines()];groups=collections.defaultdict(dict)
 for r in rs:
  if r['round']>=0:groups[r['case'],r['variant']][r['round']]=r['wall_ms']
 result={}
 for case in sorted({c for c,v in groups}):
  vs={}
  for (c,v),r in groups.items():
   if c!=case:continue
   entry={'median_ms':statistics.median(r.values()),'rounds':len(r)}
   for base in ['main',control,'wt45']:
    refs=groups[c,base];assert sorted(r)==sorted(refs)
    ratios=[r[i]/refs[i] for i in sorted(r)];rng=random.Random(2026110614);b=sorted(statistics.median(rng.choices(ratios,k=len(ratios))) for _ in range(10000));entry['vs_'+base]={'paired_percent':100*(statistics.median(ratios)-1),'CI95_percent':[100*(b[249]-1),100*(b[9749]-1)]}
   vs[v]=entry
  result[case]=vs
 all_results[folder]={'processes':len(rs),'measured':sum(r['round']>=0 for r in rs),'cases':result}
(root/'analysis.json').write_text(json.dumps(all_results,indent=2))
for folder,r in all_results.items():
 print(folder)
 for case,vs in r['cases'].items():
  if case=='pi1000':
   for v,x in vs.items():print(v,round(x['median_ms'],3),x['vs_main'])
