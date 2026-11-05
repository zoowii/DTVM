from pathlib import Path
p=Path('src/compiler/compiler.cpp');s=p.read_text();assert 'LinkTraceTotals' not in s
s=s.replace('using namespace COMPILER;', '''#include "llvm/ADT/ScopeExit.h"
#include <array>
#include <chrono>
#include <cstdio>
#include <cstdlib>
namespace {
struct LinkTraceTotals {
  std::array<uint64_t, 23> Ns{};
  std::array<uint64_t, 23> Counts{};
  ~LinkTraceTotals() {
    static const char *Names[] = {"frontend_codegen", "mc_finalize", "elf_parse",
        "section_scan", "symbol_scan", "relocation_scan", "allocation", "copy",
        "object_total_inclusive", "patch", "protect", "context_init", "frontend", "lower_ra", "mc_emit", "function_cleanup", "mir_verify_initial", "mir_peephole", "mir_dead_verify", "x86_lower", "phi", "regalloc", "post_ra"};
    for (unsigned I = 0; I < Ns.size(); ++I)
      if (Counts[I]) std::fprintf(stderr, "LINK_TRACE %s %llu %llu\\n", Names[I],
          (unsigned long long)Counts[I], (unsigned long long)Ns[I]);
  }
};
thread_local LinkTraceTotals LinkTotals;
struct LinkTrace {
  bool Enabled;
  uint64_t Last;
  static uint64_t now() {
    return std::chrono::duration_cast<std::chrono::nanoseconds>(
        std::chrono::steady_clock::now().time_since_epoch()).count();
  }
  LinkTrace() : Enabled(std::getenv("DTVM_LINK_TRACE")), Last(Enabled ? now() : 0) {}
  void mark(unsigned Phase) {
    if (!Enabled) return;
    auto Next = now();
    LinkTotals.Ns[Phase] += Next - Last;
    ++LinkTotals.Counts[Phase];
    Last = Next;
  }
};
}
using namespace COMPILER;''',1)
s=s.replace('  Ctx->finalize();','  LinkTrace Trace;\n  Ctx->finalize();\n  Trace.mark(1);',1)
s=s.replace('  // Find the text section and relocation section','  Trace.mark(2);\n  // Find the text section and relocation section',1)
s=s.replace('  constexpr size_t FuncSymbolPrefixLen','  Trace.mark(3);\n  constexpr size_t FuncSymbolPrefixLen',1)
s=s.replace('  // Record external relocations','  Trace.mark(4);\n  // Record external relocations',1)
s=s.replace('#ifdef ZEN_ENABLE_MULTIPASS_JIT_LOGGING\n  dumpAsm','  Trace.mark(5);\n#ifdef ZEN_ENABLE_MULTIPASS_JIT_LOGGING\n  dumpAsm',1)
s=s.replace('  auto CodeOrErr = TextSection->getContents();','  Trace.mark(6);\n  auto CodeOrErr = TextSection->getContents();',1)
s=s.replace('  std::memcpy(Ctx->CodePtr, CodeOrErr->data(), Ctx->CodeSize);','  std::memcpy(Ctx->CodePtr, CodeOrErr->data(), Ctx->CodeSize);\n  Trace.mark(7);',1)
s=s.replace('  compileWasmToMC(Ctx, *Mod, FuncIdx, DisableGreedyRA);\n  emitObjectBuffer(&Ctx);','  LinkTrace Trace;\n  compileWasmToMC(Ctx, *Mod, FuncIdx, DisableGreedyRA);\n  Trace.mark(0);\n  emitObjectBuffer(&Ctx);\n  Trace.mark(8);',1)
s=s.replace('  uint8_t *JITFuncCodePtr = Ctx.CodePtr;','  Trace.mark(9);\n  uint8_t *JITFuncCodePtr = Ctx.CodePtr;',1)
s=s.replace('  return JITFuncCodePtr;\n}', '  Trace.mark(10);\n  return JITFuncCodePtr;\n}',1)
s=s.replace('  if (Ctx.Inited) {', '  LinkTrace Trace;\n  auto Cleanup = llvm::make_scope_exit([&] { Trace.mark(15); });\n  if (Ctx.Inited) {',1)
s=s.replace('  uint32_t RealFuncIdx = FuncIdx + WasmMod->getNumImportFunctions();','  Trace.mark(11);\n  uint32_t RealFuncIdx = FuncIdx + WasmMod->getNumImportFunctions();',1)
s=s.replace('  compileMIRToCgIR(Mod, MFunc, CgFunc, DisableGreedyRA);','  Trace.mark(12);\n  compileMIRToCgIR(Mod, MFunc, CgFunc, DisableGreedyRA);\n  Trace.mark(13);',1)
s=s.replace('  Ctx.getMCLowering().runOnCgFunction(CgFunc);','  Ctx.getMCLowering().runOnCgFunction(CgFunc);\n  Trace.mark(14);',1)
s=s.replace('  MIRPeephole Peep;', '  Trace.mark(16);\n  MIRPeephole Peep;',1)
s=s.replace('  Peep.runOnMFunction(MFunc);','  Peep.runOnMFunction(MFunc);\n  Trace.mark(17);',1)
s=s.replace('  CgFunction &MF = CgFunc;', '  Trace.mark(18);\n  CgFunction &MF = CgFunc;',1)
s=s.replace('  CgPhiElimination PhiElimination;', '  Trace.mark(19);\n  CgPhiElimination PhiElimination;',1)
s=s.replace('  uint32_t MFuncIdx = MFunc.getFuncIdx();', '  Trace.mark(20);\n  uint32_t MFuncIdx = MFunc.getFuncIdx();',1)
s=s.replace('  PrologEpilogInserter PEInserter;', '  Trace.mark(21);\n  PrologEpilogInserter PEInserter;',1)
s=s.replace('  if (MF.EvictAdvisor) {', '  Trace.mark(22);\n  if (MF.EvictAdvisor) {',1)
s=s.replace('                                       bool KeepFirstParamInRegister) {','                                       bool KeepFirstParamInRegister) {\n  LinkTrace Trace;',1)
p.write_text(s)
