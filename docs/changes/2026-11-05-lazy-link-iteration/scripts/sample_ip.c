#define _GNU_SOURCE
#include <linux/perf_event.h>
#include <sys/syscall.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <link.h>
static int sample_fd=-1;
static struct perf_event_mmap_page *meta;
static size_t page_size, ring_size;
static uint64_t exe_base, exe_begin, exe_end;
static int find_exe(struct dl_phdr_info *i,size_t size,void *data) {
  (void)size;(void)data;
  if(i->dlpi_name && *i->dlpi_name) return 0;
  exe_base=i->dlpi_addr;
  for(unsigned j=0;j<i->dlpi_phnum;j++) {
    const ElfW(Phdr) *p=&i->dlpi_phdr[j];
    if(p->p_type==PT_LOAD && (p->p_flags&PF_X)) {
      exe_begin=exe_base+p->p_vaddr;exe_end=exe_begin+p->p_memsz;break;
    }
  }
  return 1;
}
__attribute__((constructor)) static void start_sampling(void) {
  if(!getenv("DTVM_SAMPLE_OUT"))return;
  dl_iterate_phdr(find_exe,0);
  struct perf_event_attr attr={0};
  attr.type=PERF_TYPE_SOFTWARE;attr.size=sizeof(attr);
  attr.config=PERF_COUNT_SW_CPU_CLOCK;attr.sample_period=1000000;
  attr.sample_type=PERF_SAMPLE_IP;attr.disabled=1;
  attr.exclude_kernel=1;attr.exclude_hv=1;
  sample_fd=syscall(SYS_perf_event_open,&attr,0,-1,-1,PERF_FLAG_FD_CLOEXEC);
  if(sample_fd<0){perror("sample perf_event_open");return;}
  page_size=sysconf(_SC_PAGESIZE);ring_size=64*page_size;
  meta=mmap(0,page_size+ring_size,PROT_READ|PROT_WRITE,MAP_SHARED,sample_fd,0);
  if(meta==MAP_FAILED){perror("sample mmap");close(sample_fd);sample_fd=-1;return;}
  ioctl(sample_fd,PERF_EVENT_IOC_RESET,0);ioctl(sample_fd,PERF_EVENT_IOC_ENABLE,0);
}
static void copy_ring(void *dst,uint64_t offset,size_t len) {
  size_t start=offset%ring_size,first=ring_size-start;
  if(first>len)first=len;
  const char *data=(char*)meta+page_size;
  memcpy(dst,data+start,first);if(first<len)memcpy((char*)dst+first,data,len-first);
}
__attribute__((destructor)) static void end_sampling(void) {
  if(sample_fd<0)return;
  ioctl(sample_fd,PERF_EVENT_IOC_DISABLE,0);
  const char *path=getenv("DTVM_SAMPLE_OUT");
  FILE *f=path?fopen(path,"w"):0;
  if(f) {
    uint64_t end=__atomic_load_n(&meta->data_head,__ATOMIC_ACQUIRE),pos=meta->data_tail;
    fprintf(f,"BASE %llx\n",(unsigned long long)exe_base);
    while(pos<end) {
      struct perf_event_header h;copy_ring(&h,pos,sizeof(h));
      if(h.size<sizeof(h)||h.size>ring_size)break;
      if(h.type==PERF_RECORD_SAMPLE) {
        uint64_t ip;copy_ring(&ip,pos+sizeof(h),sizeof(ip));
        fprintf(f,"%c %llx\n",ip>=exe_begin&&ip<exe_end?'E':'O',
                (unsigned long long)(ip>=exe_begin&&ip<exe_end?ip-exe_base:ip));
      } else if(h.type==PERF_RECORD_LOST) {
        uint64_t lost;copy_ring(&lost,pos+sizeof(h)+8,8);
        fprintf(f,"LOST %llu\n",(unsigned long long)lost);
      }
      pos+=h.size;
    }
    fclose(f);
  }
  munmap(meta,page_size+ring_size);close(sample_fd);
}
