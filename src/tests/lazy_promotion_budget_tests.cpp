// Copyright (C) 2026 the DTVM authors. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

#include "compiler/lazy_promotion_budget.h"
#include <gtest/gtest.h>
#include <limits>
#include <thread>
#include <vector>

using COMPILER::LazyPromotionBudget;

TEST(LazyPromotionBudget, HardFunctionAndByteCaps) {
  LazyPromotionBudget Budget(3, 10, 1000);
  EXPECT_TRUE(Budget.tryReserve(6));
  EXPECT_FALSE(Budget.tryReserve(5));
  EXPECT_TRUE(Budget.tryReserve(4));
  EXPECT_FALSE(Budget.tryReserve(1));
  EXPECT_EQ(Budget.getFunctions(), 2u);
  EXPECT_EQ(Budget.getBytes(), 10u);
}

TEST(LazyPromotionBudget, TimeStopsNewAdmissionsWithoutCancellingOldWork) {
  LazyPromotionBudget Budget(10, 100, 1000);
  ASSERT_TRUE(Budget.tryReserve(1));
  ASSERT_TRUE(Budget.tryReserve(1));
  Budget.recordTime(900);
  EXPECT_TRUE(Budget.tryReserve(1));
  Budget.recordTime(200);
  EXPECT_FALSE(Budget.tryReserve(1));
  EXPECT_EQ(Budget.getFunctions(), 3u);
  EXPECT_EQ(Budget.getTimeNs(), 1100u);
}

TEST(LazyPromotionBudget, AnyZeroLimitDisablesAdmissions) {
  LazyPromotionBudget NoFunctions(0, 100, 100);
  LazyPromotionBudget NoBytes(10, 0, 100);
  LazyPromotionBudget NoTime(10, 100, 0);
  EXPECT_FALSE(NoFunctions.tryReserve(1));
  EXPECT_FALSE(NoBytes.tryReserve(1));
  EXPECT_FALSE(NoTime.tryReserve(1));
}

TEST(LazyPromotionBudget, ConcurrentReservationsNeverExceedEitherHardCap) {
  LazyPromotionBudget Budget(17, 35, 1000000);
  std::vector<std::thread> Threads;
  for (unsigned I = 0; I < 16; ++I) {
    Threads.emplace_back([&] {
      for (unsigned J = 0; J < 100; ++J) {
        Budget.tryReserve(3);
      }
    });
  }
  for (auto &Thread : Threads) {
    Thread.join();
  }
  EXPECT_EQ(Budget.getFunctions(), 11u);
  EXPECT_EQ(Budget.getBytes(), 33u);
}

TEST(LazyPromotionBudget, TimeAccountingSaturatesRatherThanReopeningBudget) {
  const auto Max = std::numeric_limits<uint64_t>::max();
  LazyPromotionBudget Budget(10, 100, Max);
  Budget.recordTime(Max - 5);
  Budget.recordTime(10);
  EXPECT_EQ(Budget.getTimeNs(), Max);
  EXPECT_FALSE(Budget.tryReserve(1));
}

TEST(LazyPromotionBudget, QueuedWorkIsCheckedAgainBeforeExecution) {
  LazyPromotionBudget Budget(10, 100, 1000);
  ASSERT_TRUE(Budget.tryReserve(1));
  ASSERT_TRUE(Budget.tryReserve(1));
  Budget.recordTime(1000);
  bool Ran = false;
  EXPECT_FALSE(Budget.runIfTimeAvailable([&] { Ran = true; }));
  EXPECT_FALSE(Ran);
  EXPECT_EQ(Budget.getFunctions(), 2u); // reservations remain charged
}

TEST(LazyPromotionBudget, PrivateCompilesAreSerializedToBoundTimeOvershoot) {
  LazyPromotionBudget Budget(100, 1000, 1000000000);
  std::atomic<unsigned> Active{0};
  std::atomic<bool> Overlap{false};
  std::vector<std::thread> Threads;
  for (unsigned I = 0; I < 8; ++I) {
    Threads.emplace_back([&] {
      Budget.runIfTimeAvailable([&] {
        if (Active.fetch_add(1) != 0) {
          Overlap = true;
        }
        for (unsigned J = 0; J < 100; ++J) {
          std::this_thread::yield();
        }
        Active.fetch_sub(1);
      });
    });
  }
  for (auto &Thread : Threads) {
    Thread.join();
  }
  EXPECT_FALSE(Overlap);
}
