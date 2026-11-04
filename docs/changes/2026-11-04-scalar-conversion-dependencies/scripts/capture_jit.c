// Copyright (C) 2026 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
#define _GNU_SOURCE
#include <dlfcn.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdatomic.h>
#include <errno.h>
static int (*real_protect)(void*,size_t,int);
static atomic_uint sequence=0;
int mprotect(void *addr,size_t len,int prot) {
  if (!real_protect) real_protect=dlsym(RTLD_NEXT,"mprotect");
  int result=real_protect(addr,len,prot), saved=errno;
  const char *dir=getenv("JIT_CAPTURE_DIR");
  if (!result && dir && (prot&PROT_EXEC) && (prot&PROT_READ) && len<=32*1024*1024) {
    char path[1024]; unsigned i=atomic_fetch_add(&sequence,1);
    snprintf(path,sizeof(path),"%s/code-%d-%u-%p.bin",dir,getpid(),i,addr);
    int fd=open(path,O_CREAT|O_TRUNC|O_WRONLY,0600);
    if(fd>=0){size_t done=0;while(done<len){ssize_t n=write(fd,(char*)addr+done,len-done);if(n<=0)break;done+=n;}close(fd);}
  }
  errno=saved;return result;
}
