from pathlib import Path
import subprocess,re,json
p=Path('work/wapm-followup');f=next((p/'trace-fmod-greedy').glob('func-*-51-*.bin'));(p/'fmod-greedy.asm').write_text(subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64',str(f)],text=True))
metrics={}
for name in ['main-fast','fmod-fast','fmod-greedy','log-fast','main-wt45','fmod-wt45','log-wt45']:
 rows={}
 for l in (p/(name+'.asm')).read_text().splitlines():
  m=re.match(r'^\s*([0-9a-f]+):\s+(?:[0-9a-f]{2}\s+)+\s*([a-z][a-z0-9]*)\s*(.*)$',l)
  if m:rows[int(m.group(1),16)]=(m.group(2),m.group(3))
 addresses=sorted(rows);nexts=dict(zip(addresses,addresses[1:]));work=[addresses[0]];seen=set();unresolved=[]
 while work:
  addr=work.pop()
  if addr in seen:continue
  seen.add(addr);op,args=rows[addr]
  if op.startswith('ret') or op in ['ud2','int3','hlt']:continue
  if op.startswith('j'):
   target=re.match(r'^(?:0x)?([0-9a-f]+)(?:\s|$)',args)
   if target and int(target.group(1),16) in rows:work.append(int(target.group(1),16))
   else:unresolved.append([addr,op,args])
   if op=='jmp':continue
  if addr in nexts:work.append(nexts[addr])
 rs=[rows[a] for a in seen]
 metrics[name]={'CFG_reachable_instructions':len(rs),'frame_memory_operand_instructions':sum(bool(re.search(r'\([^)]*%(?:rbp|rsp)',args)) for op,args in rs),'calls':sum(op.startswith('call') for op,args in rs),'setcc':sum(op.startswith('set') for op,args in rs),'unresolved_jump_edges':unresolved,'note':'Static graph follows both conditional edges, stops at ret/ud2, and excludes unreferenced literal pools/padding. Not dynamic instruction/spill counts. WT AOT vs DTVM postlink diagnostic.'}
(p/'assembly-metrics.json').write_text(json.dumps(metrics,indent=2));print(json.dumps(metrics,indent=2))
