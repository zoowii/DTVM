from pathlib import Path
import subprocess,json,hashlib
root=Path('work/link-iteration');out=root/'diagnostics';manifest={}
for label,name in [('previous','dtvm-previous'),('regmask','dtvm-candidate')]:
 binary=root/name;lines=subprocess.check_output(['nm','-n','--defined-only',str(binary)],text=True).splitlines();symbol=next(l.split()[2] for l in lines if 'allocateCgInstruction' in l and l.split()[1]=='T');asm=subprocess.check_output(['objdump','-d','-C','--disassemble='+symbol,str(binary)],text=True);(out/(label+'-regmask-host.asm')).write_text(asm);manifest[label]={'binary_sha256':hashlib.sha256(binary.read_bytes()).hexdigest(),'symbol':symbol,'command':['objdump','-d','-C','--disassemble='+symbol,str(binary)]}
(out/'host-asm-manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
