#define _GNU_SOURCE
#include <signal.h>
#include <sys/time.h>
#include <ucontext.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
_Static_assert(__GCC_ATOMIC_LLONG_LOCK_FREE == 2, "sampler needs lock-free 64-bit atomics");
static uint64_t keys[65536], counts[65536], dropped;
static int active;
static void sample(int sig, siginfo_t *info, void *ctx) {
  (void)sig;(void)info;
  uint64_t pc=((ucontext_t*)ctx)->uc_mcontext.gregs[REG_RIP];
  unsigned pos=(unsigned)((pc>>3)*11400714819323198485ull)>>16;
  for(unsigned n=0;n<16;n++) {
    unsigned i=(pos+n)&65535;uint64_t k=__atomic_load_n(&keys[i],__ATOMIC_RELAXED);
    if(k==pc || (!k && __atomic_compare_exchange_n(&keys[i],&k,pc,0,__ATOMIC_RELAXED,__ATOMIC_RELAXED))) {
      __atomic_fetch_add(&counts[i],1,__ATOMIC_RELAXED);return;
    }
  }
  __atomic_fetch_add(&dropped,1,__ATOMIC_RELAXED);
}
__attribute__((constructor)) static void start(void) {
  if(!getenv("DTVM_SAMPLE_FILE"))return;
  struct sigaction sa={0};sa.sa_sigaction=sample;sa.sa_flags=SA_SIGINFO|SA_RESTART;sigemptyset(&sa.sa_mask);
  if(sigaction(SIGPROF,&sa,0))return;
  struct itimerval it={{0,1000},{0,1000}};active=!setitimer(ITIMER_PROF,&it,0);
}
__attribute__((destructor)) static void finish(void) {
  if(!active)return;
  struct itimerval it={0};setitimer(ITIMER_PROF,&it,0);
  FILE *f=fopen(getenv("DTVM_SAMPLE_FILE"),"w");if(!f)return;
  fprintf(f,"# interval_us=1000 dropped=%lu pid=%d\n",__atomic_load_n(&dropped,__ATOMIC_RELAXED),getpid());
  for(unsigned i=0;i<65536;i++){ uint64_t k=__atomic_load_n(&keys[i],__ATOMIC_RELAXED); if(k)fprintf(f,"%lx %lu\n",k,__atomic_load_n(&counts[i],__ATOMIC_RELAXED)); }
  fclose(f);
}
