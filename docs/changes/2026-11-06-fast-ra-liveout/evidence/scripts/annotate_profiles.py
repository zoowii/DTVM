from pathlib import Path
import json,re,subprocess
root=Path('work/fast-ra-liveout');data=json.loads((root/'profile-analysis.json').read_text());out={}
for v in ['main','chains','private-greedy','wt45']:
 d=root/'profiles'/(v+'-0');offsets={int(k):n for k,n in data[v]['fmod_sampled_offsets'].items()}
 if v=='wt45':
  asm=Path('work/wapm-followup/fmod-wt45.asm').read_text();base=int(re.search(r'^([0-9a-f]+) <wasm',asm,re.M).group(1),16)
 else:
  f=next(d.glob('func-*-51-*.bin'));asm=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64',str(f)],text=True);base=0
 lines=[];top=[]
 for l in asm.splitlines():
  m=re.match(r'^\s*([0-9a-f]+):',l);n=offsets.get(int(m.group(1),16)-base,0) if m else 0;lines.append((f'{n:5d} | ' if n else '      | ')+l)
  if n:top.append({'offset':int(m.group(1),16)-base,'samples':n,'instruction':l.strip()})
 assert sum(r['samples'] for r in top)==sum(offsets.values())
 (root/('sampled-fmod-'+v+'.asm')).write_text('\n'.join(l.rstrip() for l in lines)+'\n');out[v]={'matched_samples':sum(offsets.values()),'top':sorted(top,key=lambda r:-r['samples'])[:12]}
(root/'sampled-instructions.json').write_text(json.dumps(out,indent=2))
