from pathlib import Path
import json,re,collections,subprocess
root=Path('work/fast-ra-liveout');out={}
for variant in ['main','chains','private-greedy','wt45']:
 runs=[];functions=collections.Counter();offsets=collections.Counter();total=guest=lost=0
 for rnd in range(5):
  d=root/'profiles'/(variant+'-'+str(rnd));ranges=[]
  if variant=='wt45':
   for l in (d/'symbols.map').read_text().splitlines():
    start,size,name=l.split(maxsplit=2);m=re.search(r'function\[(\d+)\]',name)
    if m:ranges.append((int(start,16),int(start,16)+int(size,16),int(m.group(1))-11,None))
  else:
   for l in (d/'stderr').read_text().splitlines():
    if l.startswith('SHORT_COMPILE '):
     _,idx,fast,_,_,size,start=l.split();ranges.append((int(start,16),int(start,16)+int(size),int(idx),int(fast)))
  counts=collections.Counter();nt=ng=0
  for l in (d/'pc.txt').read_text().splitlines():
   if l.startswith('#'):
    lost+=int(re.search(r'dropped=(\d+)',l).group(1));continue
   pc,n=l.split();pc=int(pc,16);n=int(n);nt+=n;total+=n
   match=next((r for r in ranges if r[0]<=pc<r[1]),None)
   if match:
    a,b,idx,fast=match;guest+=n;ng+=n;functions[idx]+=n;counts[idx]+=n
    if idx==51:offsets[pc-a]+=n
  runs.append({'round':rnd,'all_samples':nt,'guest_samples':ng,'internal_51_samples':counts[51],'internal_2_samples':counts[2]})
 out[variant]={'all_samples':total,'guest_samples':guest,'dropped':lost,'guest_fraction':guest/total,'functions':dict(functions.most_common()),'fmod_fraction_all':functions[51]/total,'fmod_fraction_guest':functions[51]/guest,'main_fraction_all':functions[2]/total,'fmod_sampled_offsets':dict(offsets.most_common()),'runs':runs}
 for name,count in functions.most_common(4):print(variant,'internal',name,count,'all%',round(count/total*100,2))
 print('coverage',total,guest,lost,'fmod top',offsets.most_common(8))
(root/'profile-analysis.json').write_text(json.dumps(out,indent=2)+'\n')
