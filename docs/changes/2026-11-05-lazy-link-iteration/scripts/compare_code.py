from pathlib import Path
import hashlib,json
root=Path('work/link-iteration');files={v:sorted((root/('code-'+v)).glob('*.bin'),key=lambda p:int(p.name.split('-')[2])) for v in ['previous','regmask']};assert all(len(v)==10002 for v in files.values())
sha=lambda b:hashlib.sha256(b).hexdigest();out={'diagnostic_only':True,'case':'hot10000','mode':'lazy-F-ST','captures_per_variant':10002,'identical_helper_buffers':0,'normalized_objects':[]};aggregate={v:hashlib.sha256() for v in files}
for i,(pa,pb) in enumerate(zip(files['previous'],files['regmask'])):
 a=pa.read_bytes();b=pb.read_bytes();assert len(a)==len(b),(i,len(a),len(b))
 if i>=2:
  assert a==b,i;out['identical_helper_buffers']+=1
  aggregate['previous'].update(a);aggregate['regmask'].update(b);continue
 aa=bytearray(a);bb=bytearray(b);offsets=[]
 for off in range(2,len(a)-7):
  if a[off-2:off]==b'\x48\xb8' and b[off-2:off]==b'\x48\xb8' and a[off:off+8]!=b[off:off+8]:
   aa[off:off+8]=bytes(8);bb[off:off+8]=bytes(8);offsets.append(off)
 assert len(offsets)==(1 if i==0 else 2),offsets
 assert aa==bb,(i,'unexpected code difference')
 out['normalized_objects'].append({'sequence':i,'bytes':len(a),'normalization':'only 8-byte MOVABS RAX address operands after verified 48 b8 opcode','offsets':offsets,'sha256':sha(aa)})
out['concatenated_helper_buffers_sha256']={k:v.hexdigest() for k,v in aggregate.items()};(root/'assembly-validation.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
