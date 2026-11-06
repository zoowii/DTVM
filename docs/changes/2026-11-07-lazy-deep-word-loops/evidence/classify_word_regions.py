import json,re,subprocess
from pathlib import Path
b=Path('work/pr642');r=json.loads((b/'word-probe.json').read_text());result={}
word={'i32.load','i64.load','i32.store','i64.store','i64.load32_u','i64.load32_s','i64.store32'}
for case in ['base64cli','cowsay','qr2text','suggest','floyd-warshall','nussinov']:
 ids={x['real'] for row in r if row['case']==case and row['mode']=='on' for x in row['new_word_candidates']} if case not in ['floyd-warshall','nussinov'] else {9}
 suite='wapm' if case not in ['floyd-warshall','nussinov'] else 'polybenchc';text=subprocess.check_output(['wasm-objdump','-d',f'benchmarks/paper/benchmarks/{suite}/{case}.wasm'],text=True);func=None;stack=[];facts={};snips={}
 for line in text.splitlines():
  m=re.match(r'^[0-9a-f]+ func\[(\d+)\]',line)
  if m:
   func=int(m[1]);stack=[]
   if func in ids:facts[func]=[];snips[func]=[line]
   continue
  if func not in ids or '|' not in line:continue
  snips[func].append(line);tokens=line.split('|',1)[1].strip().split()
  if not tokens:continue
  op=tokens[0]
  if op in ['block','loop','if']:
   depth=sum(x['kind']=='loop' for x in stack)+(op=='loop');stack.append({'kind':op,'depth':depth,'word':0,'loads':0,'stores':0,'other':0,'calls':0,'start':line.split(':',1)[0].strip()})
  for f in stack:
   if f['kind']=='loop' and f['depth']==3:
    if '.load' in op or '.store' in op:
     f['word' if op in word else 'other']+=1
     if op in word:f['loads' if '.load' in op else 'stores']+=1
    if op in ['call','call_indirect']:f['calls']+=1
  if op=='end' and stack:
   f=stack.pop()
   if f['kind']=='loop' and f['depth']==3:facts[func].append(f)
 for id,ls in snips.items():(b/f'{case}-func-{id}.wasm.asm').write_text('\n'.join(ls)+'\n')
 result[case]=facts;print(case,facts,flush=True)
(b/'word-regions.json').write_text(json.dumps(result,indent=2)+'\n')
