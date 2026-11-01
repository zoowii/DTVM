// Copyright (C) 2021-2026 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

#include "runtime/isolation.h"
#include "runtime/module.h"
#include "runtime/runtime.h"
#include "utils/statistics.h"
#include "zetaengine.h"

#include <gtest/gtest.h>

#include <cstdint>
#include <string>
#include <vector>

using zen::common::RunMode;
using zen::common::TypedValue;
using zen::runtime::Instance;
using zen::runtime::Isolation;
using zen::runtime::Module;
using zen::runtime::Runtime;
using zen::runtime::RuntimeConfig;
using zen::utils::StatisticPhase;
using zen::utils::Statistics;

namespace {

// (module (func (export "a") (result i32) (i32.const 1))
//         (func (export "b") (result i32) (i32.const 2)))
constexpr uint8_t kTwoFuncs[] = {
    0x00, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00, 0x01, 0x05, 0x01,
    0x60, 0x00, 0x01, 0x7f, 0x03, 0x03, 0x02, 0x00, 0x00, 0x07, 0x09,
    0x02, 0x01, 0x61, 0x00, 0x00, 0x01, 0x62, 0x00, 0x01, 0x0a, 0x0b,
    0x02, 0x04, 0x00, 0x41, 0x01, 0x0b, 0x04, 0x00, 0x41, 0x02, 0x0b};

// same plus (func (export "c") (result i32) (i32.const 3))
constexpr uint8_t kThreeFuncs[] = {
    0x00, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00, 0x01, 0x05, 0x01,
    0x60, 0x00, 0x01, 0x7f, 0x03, 0x04, 0x03, 0x00, 0x00, 0x00, 0x07,
    0x0d, 0x03, 0x01, 0x61, 0x00, 0x00, 0x01, 0x62, 0x00, 0x01, 0x01,
    0x63, 0x00, 0x02, 0x0a, 0x10, 0x03, 0x04, 0x00, 0x41, 0x01, 0x0b,
    0x04, 0x00, 0x41, 0x02, 0x0b, 0x04, 0x00, 0x41, 0x03, 0x0b};

std::unique_ptr<Runtime> makeRuntime(bool Stats, bool Lazy) {
  RuntimeConfig Cfg;
  Cfg.Mode = RunMode::MultipassMode;
  Cfg.EnableStatistics = Stats;
#ifdef ZEN_ENABLE_BUILTIN_WASI
  Cfg.DisableWASI = true;
#endif
#ifdef ZEN_ENABLE_MULTIPASS_JIT
  Cfg.EnableMultipassLazy = Lazy;
  Cfg.DisableMultipassMultithread = true;
#endif
  return Runtime::newRuntime(Cfg);
}

bool callNoArgI32(Runtime &RT, Instance &Inst, const char *Name, int32_t &Out) {
  std::vector<TypedValue> Results;
  if (!RT.callWasmFunction(Inst, Name, {}, Results)) {
    return false;
  }
  if (Inst.hasError() || Results.size() != 1) {
    return false;
  }
  Out = Results[0].Value.I32;
  return true;
}

} // namespace

TEST(StatisticsLifetime, NotesAccumulate) {
  Statistics S(true);
  S.noteEagerFunctionsCompiled(25);
  S.noteEagerFunctionsCompiled(25);
  EXPECT_EQ(S.getEagerFunctionsCompiled(), 50u);
  S.noteLazyStubsPrecompiled(2);
  S.noteLazyStubsPrecompiled(3);
  EXPECT_EQ(S.getLazyStubsPrecompiled(), 5u);
}

TEST(StatisticsLifetime, DisabledIgnoresNotes) {
  Statistics S(false);
  S.noteEagerFunctionsCompiled(25);
  S.noteLazyStubsPrecompiled(3);
  EXPECT_EQ(S.getEagerFunctionsCompiled(), 0u);
  EXPECT_EQ(S.getLazyStubsPrecompiled(), 0u);
}

TEST(StatisticsLifetime, TwoEagerCompilationsAccumulate) {
  auto RT = makeRuntime(/*Stats=*/true, /*Lazy=*/false);
  ASSERT_NE(RT, nullptr);
  auto M0 = RT->loadModule("m0", kTwoFuncs, sizeof(kTwoFuncs));
  ASSERT_TRUE(M0) << M0.getError().getFormattedMessage();
  EXPECT_EQ(RT->getStatistics().getEagerFunctionsCompiled(), 2u);
  EXPECT_EQ(RT->getStatistics().getRecordCount(StatisticPhase::JITCompilation),
            1u);
  ASSERT_TRUE(RT->unloadModule(*M0));
  auto M1 = RT->loadModule("m1", kThreeFuncs, sizeof(kThreeFuncs));
  ASSERT_TRUE(M1) << M1.getError().getFormattedMessage();
  EXPECT_EQ(RT->getStatistics().getEagerFunctionsCompiled(), 5u);
  EXPECT_EQ(RT->getStatistics().getLazyStubsPrecompiled(), 0u);
  EXPECT_EQ(RT->getStatistics().getRecordCount(StatisticPhase::JITCompilation),
            2u);
  const uint32_t Eager = RT->getStatistics().getEagerFunctionsCompiled();
  const uint32_t JitTimes =
      RT->getStatistics().getRecordCount(StatisticPhase::JITCompilation);
  RT->getStatistics().report();
  RT->getStatistics().report();
  EXPECT_EQ(RT->getStatistics().getEagerFunctionsCompiled(), Eager);
  EXPECT_EQ(RT->getStatistics().getRecordCount(StatisticPhase::JITCompilation),
            JitTimes);
}

TEST(StatisticsLifetime, TwoLazyPrecompilesAccumulateAndFgIsUsedBodies) {
  auto RT = makeRuntime(/*Stats=*/true, /*Lazy=*/true);
  ASSERT_NE(RT, nullptr);
  auto M0 = RT->loadModule("lz0", kTwoFuncs, sizeof(kTwoFuncs));
  ASSERT_TRUE(M0) << M0.getError().getFormattedMessage();
  EXPECT_EQ(RT->getStatistics().getLazyStubsPrecompiled(), 2u);
  auto M1 = RT->loadModule("lz1", kThreeFuncs, sizeof(kThreeFuncs));
  ASSERT_TRUE(M1) << M1.getError().getFormattedMessage();
  EXPECT_EQ(RT->getStatistics().getLazyStubsPrecompiled(), 5u);
  EXPECT_EQ(RT->getStatistics().getEagerFunctionsCompiled(), 0u);
  EXPECT_EQ(
      RT->getStatistics().getRecordCount(StatisticPhase::JITLazyPrecompilation),
      2u);

  Isolation *Iso = RT->createManagedIsolation();
  ASSERT_NE(Iso, nullptr);
  auto InstRet = Iso->createInstance(**M0);
  ASSERT_TRUE(InstRet) << InstRet.getError().getFormattedMessage();
  int32_t Out = 0;
  ASSERT_TRUE(callNoArgI32(*RT, **InstRet, "a", Out));
  EXPECT_EQ(Out, 1);
  EXPECT_EQ(
      RT->getStatistics().getRecordCount(StatisticPhase::JITLazyFgCompilation),
      1u);
  EXPECT_EQ(RT->getStatistics().getLazyStubsPrecompiled(), 5u);
}

TEST(StatisticsLifetime, DisabledRuntimeKeepsZeroCounts) {
  auto RT = makeRuntime(/*Stats=*/false, /*Lazy=*/false);
  ASSERT_NE(RT, nullptr);
  auto M0 = RT->loadModule("off0", kTwoFuncs, sizeof(kTwoFuncs));
  ASSERT_TRUE(M0) << M0.getError().getFormattedMessage();
  auto M1 = RT->loadModule("off1", kThreeFuncs, sizeof(kThreeFuncs));
  ASSERT_TRUE(M1) << M1.getError().getFormattedMessage();
  EXPECT_EQ(RT->getStatistics().getEagerFunctionsCompiled(), 0u);
  EXPECT_EQ(RT->getStatistics().getLazyStubsPrecompiled(), 0u);
  Isolation *Iso = RT->createManagedIsolation();
  auto InstRet = Iso->createInstance(**M0);
  ASSERT_TRUE(InstRet);
  int32_t Out = 0;
  ASSERT_TRUE(callNoArgI32(*RT, **InstRet, "a", Out));
  EXPECT_EQ(Out, 1);
}
