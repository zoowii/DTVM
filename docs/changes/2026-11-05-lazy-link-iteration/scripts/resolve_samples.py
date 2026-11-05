import argparse,subprocess,bisect,collections,json
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('binary');p.add_argument('samples');a=p.parse_args()
symbols=[]
for line in subprocess.check_output(['nm','-n','--defined-only',a.binary],text=True).splitlines():
 v=line.split(maxsplit=2)
 if len(v)==3 and v[1] in ['t','T','w','W']:symbols.append((int(v[0],16),v[2]))
addresses=[s[0] for s in symbols];counts=collections.Counter();total=0;lost=0
for line in Path(a.samples).read_text().splitlines():
 kind,ip=line.split()
 if kind=='BASE':continue
 if kind=='LOST':lost+=int(ip);continue
 total+=1
 if kind=='O':counts['[outside main executable]']+=1;continue
 pos=bisect.bisect_right(addresses,int(ip,16))-1;counts[symbols[pos][1] if pos>=0 else '[unknown]']+=1
names=list(counts);demangled=subprocess.check_output(['c++filt',*names],text=True).splitlines();mapped=dict(zip(names,demangled));out={'sample_period_ns':1000000,'total':total,'lost':lost,'self_samples':[{'function':mapped[k],'samples':n,'percent':100*n/total} for k,n in counts.most_common(25)]};print(json.dumps(out,indent=2))
