import json,re
from pathlib import Path
root=Path('work/poly632');out={}
for case in ['gemm','2mm']:
 out[case]={}
 for variant in ['fast','candidate','dfs','wt45']:
  path=root/f'{case}-{variant}.asm';ins=[]
  for line in path.read_text().splitlines():
   m=re.match(r'^\s*([0-9a-f]+):\s+([a-z][a-z0-9]+)\s*(.*)',line)
   if m:ins.append((int(m[1],16),m[2],m[3],line))
  add=lambda x:x[1] in ['addsd','addss','vaddsd','vaddss']
  mul=lambda x:x[1] in ['mulsd','mulss','vmulsd','vmulss']
  loops=[]
  for a,op,operands,line in ins:
   if not op.startswith('j'):continue
   m=re.match(r'(?:0x)?([0-9a-f]+)',operands)
   if not m:continue
   target=int(m[1],16)
   if target>=a:continue
   body=[x for x in ins if target<=x[0]<=a]
   if any(map(add,body)) and any(map(mul,body)):loops.append((target,a,body))
  minimal=[l for l in loops if not any(l[0]<=q[0] and q[1]<=l[1] and (l[0],l[1])!=(q[0],q[1]) for q in loops)]
  out[case][variant]=[]
  for n,(start,end,body) in enumerate(minimal):
   out[case][variant].append({'start':hex(start),'end':hex(end),'instructions':len(body),'frame_memory_operands':sum(bool(re.search(r'\([^)]*%(?:r|e)(?:bp|sp)',x[2])) for x in body)})
   (root/f'{case}-{variant}-inner{n}.asm').write_text('\n'.join(x[3] for x in body)+'\n')
(root/'inner-loop-summary.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
