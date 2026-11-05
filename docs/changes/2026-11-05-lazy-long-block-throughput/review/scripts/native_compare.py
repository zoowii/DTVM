from pathlib import Path
import hashlib,json
root=Path('work/review');files={v:sorted((root/('code-'+v)).glob('*.bin'),key=lambda p:int(p.name.split('-')[2])) for v in ['before','after']};assert all(len(ps)==3 for ps in files.values());out=[]
for i,(a,b) in enumerate(zip(files['before'],files['after'])):
 x=bytearray(a.read_bytes());y=bytearray(b.read_bytes());assert len(x)==len(y);offsets=[]
 if i<2:
  for off in range(2,len(x)-7):
   if x[off-2:off]==y[off-2:off]==b'\x48\xb8' and x[off:off+8]!=y[off:off+8]:x[off:off+8]=y[off:off+8]=bytes(8);offsets.append(off)
  assert len(offsets)==(1 if i==0 else 2)
 assert x==y
 out.append({'sequence':i,'bytes':len(x),'masked_MOVABS_offsets':offsets,'matching_sha256':hashlib.sha256(x).hexdigest()})
(root/'native-validation.json').write_text(json.dumps(out,indent=2)+'\n')
