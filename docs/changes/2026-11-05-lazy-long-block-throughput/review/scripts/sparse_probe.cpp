#include "llvm/ADT/SparseSet.h"
#include <cstdint>
#include <cstdio>
struct Entry {
  unsigned Key;
  static unsigned Probes;
  unsigned getSparseSetIndex() const { ++Probes; return Key; }
};
unsigned Entry::Probes = 0;
template <typename Index> unsigned measure(unsigned N) {
  llvm::SparseSet<Entry, llvm::identity<unsigned>, Index> Set;
  Set.setUniverse(N);
  for (unsigned I = 0; I < N; ++I) Set.insert(Entry{I});
  Entry::Probes = 0;
  if (Set.find(N - 1) == Set.end()) return 0;
  return Entry::Probes;
}
int main() {
  for (unsigned N : {512u, 10000u, 100000u})
    std::printf("%u default_u8=%u full_u32=%u\n", N,
                measure<uint8_t>(N), measure<uint32_t>(N));
}
