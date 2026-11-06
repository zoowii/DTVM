import csv,json,random,statistics
from pathlib import Path
base=Path(__file__).resolve().parent;rng=random.Random(2026110742);result={}
for root in sorted(base.iterdir()):
 if not (root/'samples.jsonl').is_file() or (root/'INTERRUPTED.md').exists():continue
 rows=[json.loads(s) for s in (root/'samples.jsonl').read_text().splitlines()]
 current={}
 for case in sorted({r['case'] for r in rows}):
  raw=[r for r in rows if r['case']==case];valid=all(r['exit']==0 for r in raw)
  maps={v:{r['round']:r['wall_ms'] for r in raw if r['variant']==v and r['round']>=0 and r['exit']==0} for v in sorted({r['variant'] for r in raw})}
  med={v:statistics.median(x.values()) for v,x in maps.items() if x};pairs={}
  comparisons=[('candidate','main'),('candidate','wt45')]+[(v,ref) for v in maps if v not in ['main','candidate','wt45'] for ref in ['candidate','wt45']]
  if 'probe-on' in maps and 'probe-off' in maps:comparisons.append(('probe-on','probe-off'))
  for candidate,ref in comparisons:
   indices=sorted(maps[candidate].keys() & maps[ref].keys())
   if not indices:continue
   ratios=[maps[candidate][i]/maps[ref][i] for i in indices]
   boots=sorted(statistics.median(rng.choices(ratios,k=len(ratios))) for _ in range(10000))
   pairs[candidate+'/'+ref]={'paired_median':statistics.median(ratios),'pointwise_bootstrap95':[boots[250],boots[9749]],'rounds':len(ratios)}
  current[case]={'valid_exit':valid,'suite':raw[0]['suite'],'n':{k:len(v) for k,v in maps.items()},'medians_ms':med,'paired_ratios':pairs,'output_hash_counts':{s:len({r[s+'_sha256'] for r in raw}) for s in ['stdout','stderr']},'exits':{v:sorted({str(r['exit']) for r in raw if r['variant']==v}) for v in maps}}
 result[root.name]=current
(base/'summary.json').write_text(json.dumps(result,indent=2)+'\n')
with (base/'summary.csv').open('w') as f:
 w=csv.writer(f);w.writerow(['cohort','suite','case','valid_exit','rounds','main_ms','pr642_ms','wasmtime45_ms','median_change_vs_main_pct','paired_fix_main','paired_fix_main_95low','paired_fix_main_95high','stdout_hashes','stderr_hashes'])
 for cohort,cases in result.items():
  for case,d in cases.items():
   m=d['medians_ms'];p=d['paired_ratios'].get('candidate/main',{});ci=p.get('pointwise_bootstrap95',['',''])
   w.writerow([cohort,d['suite'],case,d['valid_exit'],d['n'].get('candidate'),m.get('main'),m.get('candidate'),m.get('wt45'),100*(m['candidate']/m['main']-1) if m.get('main') and m.get('candidate') else '',p.get('paired_median'),*ci,d['output_hash_counts']['stdout'],d['output_hash_counts']['stderr']])
for cohort,cases in result.items():
 print(cohort)
 for c,d in cases.items():
  m=d['medians_ms'];print(c, {k:round(v,3) for k,v in m.items()},'change',round(100*(m['candidate']/m['main']-1),2) if 'candidate' in m and 'main' in m else 'invalid')
