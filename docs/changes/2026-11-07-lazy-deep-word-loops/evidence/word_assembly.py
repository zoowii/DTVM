import json,re,subprocess
from pathlib import Path
b=Path(__file__).resolve().parent;result={}
for case in ['floyd-warshall','nussinov']:
 result[case]={}
 wt=b/('wt-word-live-'+case);entries=json.loads((wt/'captures.json').read_text());main=next(e for e in entries if e['name']=='main')
 paths={'fast':b/f'word-native-{case}-off/func-2-fast.bin','greedy':b/f'word-native-{case}-on/func-2-greedy.bin','wt45':wt/main['file']}
 for mode,p in paths.items():
  asm=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64',str(p)],text=True);(b/f'{case}-{mode}.asm').write_text(asm);ins=[]
  for line in asm.splitlines():
   m=re.match(r'^\s*([0-9a-f]+):\s+(?:[0-9a-f]{2}\s+)+([^\s]+)(?:\s+(.*))?$',line)
   if m:ins.append((int(m[1],16),m[2],m[3] or '',line))
  edges=[]
  for pc,op,args,line in ins:
   t=re.match(r'(?:0x)?([0-9a-f]+)\b',args)
   if op.startswith('j') and t and int(t[1],16)<pc:edges.append((int(t[1],16),pc))
  minimal=[e for e in edges if not any(e[0]<=f[0] and f[1]<=e[1] and e!=f for f in edges)]
  loops=[]
  for i,(start,end) in enumerate(minimal):
   body=[x for x in ins if start<=x[0]<=end]
   if len(body)<4:continue
   frames=sum(op!='lea' and re.search(r'\([^)]*%(?:rbp|rsp)[^)]*\)',args) is not None for _,op,args,_ in body)
   calls=sum(op.startswith('call') for _,op,_,_ in body)
   loads=sum(re.search(r'\([^)]*\),\s*%\w+$',args) is not None and re.search(r'\([^)]*%(?:rbp|rsp)[^)]*\)',args) is None and not op.startswith('lea') for _,op,args,_ in body)
   name=f'{case}-{mode}-inner{i}.asm';(b/name).write_text('\n'.join(x[3] for x in body)+'\n');loops.append({'start':hex(start),'end':hex(end),'instructions':len(body),'frame_accesses':frames,'calls':calls,'heap_loads':loads,'listing':name})
  result[case][mode]={'code_bytes':p.stat().st_size,'loops':loops}
(b/'word-assembly.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
