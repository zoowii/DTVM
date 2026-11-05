import json,statistics,random,argparse
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('directory');p.add_argument('base');p.add_argument('candidate');a=p.parse_args();d=Path(a.directory);rows=[json.loads(x) for x in (d/'samples.jsonl').read_text().splitlines()];rng=random.Random(20261117);out=[]
for case in sorted({r['case'] for r in rows}):
 v={name:{r['round']:r['wall_ms'] for r in rows if r['case']==case and r['variant']==name and r['round']>=0} for name in (a.base,a.candidate)};keys=sorted(v[a.base]);assert keys==sorted(v[a.candidate]);b=[v[a.base][i] for i in keys];c=[v[a.candidate][i] for i in keys];bs=[]
 for _ in range(10000):
  ix=[rng.randrange(len(b)) for _ in b];bs.append(100*(statistics.median(c[i] for i in ix)/statistics.median(b[i] for i in ix)-1))
 bs.sort();mb=statistics.median(b);mc=statistics.median(c);out.append({'case':case,'base_ms':mb,'candidate_ms':mc,'change_pct':100*(mc/mb-1),'paired_bootstrap95_pct':[bs[249],bs[9749]],'n':len(b)})
print(json.dumps(out,indent=2))
