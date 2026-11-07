#include <cstddef>
#include <cstdint>
#ifdef ZEN_ENABLE_SGX
#include "platform/sgx/zen_sgx_mman.h"
#else
#include <sys/mman.h>
#endif
#include <cstdlib>
#define ZEN_ABORT() abort()
struct Entry { size_t InitSize; };
struct Module { Entry getDefaultMemoryEntry(); };
struct Data { uint8_t *MemoryData; size_t MemorySize; };
void check(Module *CurModule, Data OldMemoryData, size_t NewMemorySize) {
constexpr size_t DefaultBytesNumPerPage=65536, MmapMemoryBucketGrowMaxSize=33554432;
#ifndef ZEN_ENABLE_SGX
        // SGX's mmap shim does not implement fixed-address replacement.
        const size_t InitialSize =
            size_t(CurModule->getDefaultMemoryEntry().InitSize) *
            DefaultBytesNumPerPage;
        if (NewMemorySize > OldMemoryData.MemorySize &&
            OldMemoryData.MemorySize == InitialSize) {
          // Memory only grows: convert this item's unused zero tail once, on
          // its first positive growth. Keep the initial data template intact.
          // Reserve the whole tail as inaccessible anonymous pages; the
          // existing mprotect below exposes exactly the requested size.
          auto *Begin = OldMemoryData.MemoryData + InitialSize;
          size_t Length = MmapMemoryBucketGrowMaxSize - InitialSize;
          if (::mmap(Begin, Length, PROT_NONE,
                     MAP_FIXED | MAP_PRIVATE | MAP_ANONYMOUS, -1,
                     0) == MAP_FAILED) {
            ZEN_ABORT();
          }
        }
#endif
}
