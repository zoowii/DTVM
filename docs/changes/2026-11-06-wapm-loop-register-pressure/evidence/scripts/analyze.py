from pathlib import Path
import json,statistics,random,collections
p=Path('work/wapm-followup');result={}
for folder,base in [('screen-r5','main'),('causal-r7','main'),('selfcmp-r9','main'),('confirm-r21','main'),('phases-r7','main'),('pure-loop-r15','main'),('final-r15','main')]:
 path=p/folder/'samples.jsonl'
 if not path.exists():continue
 rs=[json.loads(l) for l in path.read_text().splitlines()];groups=collections.defaultdict(dict)
 for r in rs:
  if r['round']>=0:groups[r.get('case','pi1000'),r['variant']][r['round']]=r
 cases={}
 for case in sorted({c for c,v in groups}):
  vs={}
  for (c,v),rounds in groups.items():
   if c!=case:continue
   ref=groups[c,base];keys=sorted(rounds);assert keys==sorted(ref)
   metrics={}
   for metric in ['wall_ms','cpu_ms','kernel_ms','prime_ms']:
    if metric not in rounds[keys[0]]:continue
    vals=[rounds[k][metric] for k in keys];ratios=[rounds[k][metric]/ref[k][metric] for k in keys];rng=random.Random(2026110605);boots=sorted(statistics.median(rng.choices(ratios,k=len(ratios))) for _ in range(10000))
    metrics[metric]={'median':statistics.median(vals),'paired_median_change_percent':100*(statistics.median(ratios)-1),'paired_95_bootstrap_percent':[100*(boots[249]-1),100*(boots[9749]-1)],'rounds':len(keys)}
   vs[v]=metrics
  cases[case]=vs
 result[folder]={'processes':len(rs),'measured_processes':sum(r['round']>=0 for r in rs),'cases':cases}
(p/'analysis.json').write_text(json.dumps(result,indent=2))
for folder in ['causal-r7','selfcmp-r9','confirm-r21','phases-r7','pure-loop-r15','final-r15']:
 if folder not in result:continue
 print(folder)
 for case,vs in result[folder]['cases'].items():
  print(case,{v:{'ms':round(x['wall_ms']['median'],3),'change':round(x['wall_ms']['paired_median_change_percent'],2),'ci':[round(z,2) for z in x['wall_ms']['paired_95_bootstrap_percent']]} for v,x in vs.items()})
