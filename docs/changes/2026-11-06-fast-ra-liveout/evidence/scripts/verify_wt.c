#define _GNU_SOURCE
#include <pthread.h>
#include <fcntl.h>
#include <sys/uio.h>
#include <unistd.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
static pthread_t worker;
static int active;
static void *capture(void *unused) {
 (void)unused;int mem=open("/proc/self/mem",O_RDONLY);if(mem<0)return 0;char map[128];snprintf(map,sizeof(map),"/tmp/perf-%d.map",getpid());
 for(unsigned i=0;i<2000;i++) {
  FILE *maps=fopen("/proc/self/maps","r");
  if(maps) {
    char line[4096],path[4096];
    while(fgets(line,sizeof(line),maps)) {
      unsigned long a,b;char perm[8];
      if(sscanf(line,"%lx-%lx %7s",&a,&b,perm)==3 && !strncmp(perm,"r-x",3) && b-a<=1024*1024 && (strstr(line,"memfd") || !strchr(line,'/'))) {
        char name[4096];snprintf(name,sizeof(name),"%s-%lx.bin",getenv("DTVM_CODE_VERIFY_FILE"),a);
        if(access(name,F_OK)) {
          unsigned char *data=malloc(b-a);struct iovec lo={data,b-a},re={(void*)(uintptr_t)a,b-a};
          ssize_t n=pread(mem,data,b-a,a);
          if(n==(ssize_t)(b-a)){FILE *o=fopen(name,"wb");if(o){fwrite(data,1,b-a,o);fclose(o);}}
          free(data);
        }
      }
    }fclose(maps);
  }
  FILE *f=fopen(map,"r");
  if(f) {
   char line[4096];while(fgets(line,sizeof(line),f)) {
    unsigned long addr,size;char name[2048];
    if(sscanf(line,"%lx %lx %2047s",&addr,&size,name)==3 && strstr(name,"wasm[0]::function[62]") && size<4096) {
     unsigned char data[4096];struct iovec local={data,size},remote={(void*)(uintptr_t)addr,size};
     if(pread(mem,data,size,addr)==(ssize_t)size) {
      FILE *o=fopen(getenv("DTVM_CODE_VERIFY_FILE"),"wb");if(o){fwrite(data,1,size,o);fclose(o);}fclose(f);return 0;
     }
    }
   }fclose(f);
  }
  usleep(1000);
 }return 0;
}
__attribute__((constructor)) static void start(void) {if(getenv("DTVM_CODE_VERIFY_FILE"))active=!pthread_create(&worker,0,capture,0);}
__attribute__((destructor)) static void finish(void) {if(active)pthread_join(worker,0);}
