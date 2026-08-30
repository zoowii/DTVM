# Wasmtime 最新性能优化方法分析

## 概述

Wasmtime 作为 Bytecode Alliance 主导的 WebAssembly 运行时，在 2025-2026 年期间引入了大量性能优化。本报告从编译器优化、GC 优化、运行时优化三个维度进行分析，并对 DTVM 项目有参考价值的方法做重点标注。

---

## 一、编译器优化（Cranelift 后端）

### 1.1 A-Graph（Acyclic E-Graph）中端优化框架

**来源**: Chris Fallin, "The acyclic e-graph: Cranelift's mid-end optimizer", 2026-04-09

**核心思路**:
- 使用等价图（e-graph）同时表示多种等价形式的程序表达
- 在构建 sea-of-nodes 表示时立即进行 eager rewrite，而非传统的 fixpoint 迭代
- 通过 toposort + 动态规划进行 cost-based extraction，选择最优表达形式

**效果**:
- SpiderMonkey.wasm 基准测试中比经典管线快约 2%
- 编译时间增加约 7-8%（从 2023 年初版的 parity 略有上升）
- 完全替代了 GVN、LICM、alias analysis 等传统优化 pass

**对 DTVM 的参考价值**: dMIR 编译管线可以考虑引入类似的等价类优化框架，在 IR 层进行代数重写和公共子表达式消除。

### 1.2 函数内联（Function Inlining）

**来源**: Nick Fitzgerald, "A Function Inliner for Wasmtime and Cranelift", 2025-11-19; PR #11210

**背景**: Cranelift 历史上不做内联，因为：
1. 它是 per-function 编译器，内联会破坏并行编译
2. Wasm 模块通常已由 LLVM 等工具链完成有益的内联

**组件模型改变了一切**: 跨模块调用使得内联收益显著。

**设计亮点**:
- 分层架构: Cranelift 提供可选内联 pass，embedder 提供是否内联的回调决策
- 并行内联算法: 基于 SCC（强连通分量）的调用图拓扑排序，使用 "evaporation"（反向凝聚图）进行层级并行
- 通过 arena 追加实现 callee 到 caller 的快速合并

**性能数据**:
- 合成基准: 内联版本比非内联快 **3.69x**
- `pulldown-cmark.wasm`: 指令数减少 **1.26x**
- 跨模块组件化程序预期收益更大

**启用方式**: `-C inlining=y` 或 `Config::compiler_inlining()`（默认关闭，仍在优化中）

**对 DTVM 的参考价值**: DTVM 的 EVM 字节码到 dMIR 的编译过程中，可以考虑类似的跨函数内联策略，特别是对于频繁调用的库函数。

### 1.3 ISLE 编译优化

**来源**: PR #12303, PR #12841

**问题**: ISLE（Instruction Selection and Lowering Expressions）代码生成时，单个 term 如果包含数百条规则，会生成巨大的 Rust match 函数，导致 rustc 编译瓶颈。

**解决方案**:
- 将大型 match 语句用 closure 包裹，分割为多个小编译单元
- 可控的 splitting threshold（环境变量 `ISLE_SPLIT_MATCH_THRESHOLD`）
- 在 6000+ 规则的实验中，编译时间从 **841s 降至 69s**（**11x 加速**）
- 对运行时性能影响极小（< 0.7%）

### 1.4 类型感知常量折叠

**来源**: PR #12826

**改进**: 引入 `imm64_*` 类型感知的常量折叠操作，正确处理位宽边界和符号性语义。

**新增规则示例**:
- `(x + y) - (x + z) → (y - z)`
- `umin(x, y) + umax(x, y) → x + y`
- `smin(x, y) + smax(x, y) → x + y`
- `(x & ~y) - (x & y) → ((x ^ y) - y)`
- `(x + y) == (y + x) → true`（消除冗余比较）

**对 DTVM 的参考价值**: dMIR 编译阶段可以引入类似的代数简化规则，减少不必要的算术运算。

### 1.5 MachBuffer 改进

**来源**: PR #12842

修复了 Cranelift MachBuffer 在短跳转 deadline 处理上的 bug。对于 RISC-V 压缩跳转（±2048 字节范围）等场景，确保 veneer island 在常量/trap 之前正确发射，避免 panic。

---

## 二、GC（垃圾回收）优化

### 2.1 DRC 收集器优化

**来源**: PR #12974

**优化项**:
- 在 DRC 收集器中缓存 `TraceInfo` 查找
- 将 `dec_ref`、`trace`、`dealloc` 合并为单遍循环
- 快速路径 `gc_alloc_raw`，跳过 async/fiber 机制
- 使用自定义 hasher 优化 trace-info 哈希表
- 避免在 DRC 释放时对 `externref` 双重测试
- 传递 `VMSharedTypeIndex` 给 `gc_alloc_raw` libcall

**大数组追踪时内存使用减少**。

### 2.2 增长 vs 收集的自适应启发式

**来源**: PR #12942

**核心算法**:
- 比较最后存活堆大小与当前容量
- 当容量 > 2x 最后存活堆大小时：先收集，若仍不足再增长
- 否则：直接增长
- 结合指数增长规则，实现"摊销常数时间"开销

**效果**:
- 减少常驻内存集大小，保持在更高层级缓存内
- 对大量临时垃圾产生的工作负载效果显著

### 2.3 拷贝式收集器（初版实现）

**来源**: v45.0.0 release notes

Wasmtime 引入了 copying collector 的初始实现，能够回收循环引用，这是对 DRC 收集器的重要补充。

---

## 三、运行时优化

### 3.1 MMU 驱动的 Epoch 中断

**来源**: PR #12990

**问题**: 当前的 epoch 中断机制通过比较 deadline 实现，带来 **14.4%** 的性能损失。

**方案**: 使用 MMU 保护页进行 dead load，通过信号处理实现中断。

**效果**: 仅做 prologue 和 loop header 的 dead load 时，性能损失降至 **2.8%**（从 14.4% 大幅改善）。

**原理**: 在 epoch 结束时修改页权限，触发信号处理，冷路径开销极小。

**对 DTVM 的参考价值**: 如果 DTVM 有类似的定时中断/时间片机制，可以考虑基于 MMU 的优化方案。

### 3.2 边界检查消除（Bounds Check Elision）

**来源**: Wasmtime 官方文档

**机制**: 通过虚拟内存 guard pages 替代显式边界检查。

**要求**:
- 启用 signals-based traps（非裸机构建默认开启）
- 64 位主机架构
- 内存预留至少 4GiB，guard region 至少 4GiB（或小至 32MiB 获得大部分收益）

**效果**: 消除 **1.2x 至 1.8x** 的性能开销。

### 3.3 ISA 扩展强制启用

**来源**: Wasmtime 官方文档

当预编译 Wasm 在不同于编译机的目标机上运行时，强制启用 AVX/AVX2/SSE4.1/LZCNT 等 ISA 扩展可以显著提升 SIMD 密集型程序的性能。

### 3.4 AArch64 CSDB 指令移除

**来源**: PR #12932, v44.0.0

默认不再发射 Spectre 防御性 CSDB 指令（与同行运行时一致）。在某些情况下可带来高达 **6x** 的性能提升（macOS）。

### 3.5 组件缓存性能修复

**来源**: Issue #11974, PR #11987

34.0.2 → 35.0.0 升级后发现 20% 的延迟增加，根因是组件类型缓存中的 `Arc::clone` 导致的原子操作争用。修复后：
- 吞吐量: 93.28 MiB/s → 124.36 MiB/s（**+33%**）
- 延迟: 19.490ms → 13.473ms（**-31%**）

**教训**: 高频路径上的原子操作争用可能导致显著的性能退化。

### 3.6 WASI stdin 读取性能改进

**来源**: v45.0.0 release notes

改进了 WASI 中 stdin 读取的性能。

### 3.7 AArch64 尾调用优化帧布局

**来源**: v45.0.0 release notes

AArch64 上使用更优化的帧布局用于纯尾调用函数。

---

## 四、Sightglass 基准测试框架

Wasmtime 团队使用内部基准测试工具 Sightglass 进行性能验证，主要指标包括：
- `instructions-retired`: 执行指令数
- `execution`: 端到端执行时间
- 编译时间

建议 DTVM 项目也建立类似的基准测试基础设施。

---

## 五、对 DTVM 的适用性分析

| 优化技术 | 适用性 | 优先级 | 说明 |
|---------|--------|--------|------|
| A-Graph 代数优化 | 高 | 中 | dMIR IR 层可引入等价类优化 |
| 函数内联 | 高 | 高 | EVM 跨合约/库调用内联收益显著 |
| 常量折叠规则扩展 | 高 | 高 | 代数简化规则可直接移植思路 |
| MMU 中断优化 | 中 | 低 | 取决于 DTVM 是否需要 epoch 中断 |
| 边界检查消除 | 中 | 中 | 如果 DTVM 有类似 sandbox 机制 |
| GC 启发式收集 | 低 | 低 | DTVM 目前不使用 GC |
| ISA 扩展启用 | 高 | 高 | JIT 编译时自动检测/启用 |
| 原子操作争用优化 | 高 | 高 | 高频路径避免不必要的原子操作 |

---

## 六、总结

Wasmtime 在 2025-2026 年的性能优化主要集中在三个方向：

1. **编译器层**: A-Graph 等价图优化、函数内联、ISLE 编译加速、常量折叠规则扩展，这些是收益最大且最具参考价值的方向。

2. **GC 层**: DRC 收集器多轮优化、自适应增长/收集启发式、拷贝式收集器，对托管语言运行时有价值。

3. **运行时层**: MMU epoch 中断（14.4% → 2.8% 开销）、边界检查消除、ISA 扩展启用、原子操作争用修复。

对于 DTVM 项目，最直接可借鉴的是 **函数内联策略** 和 **代数简化规则扩展**，这两项对 EVM 字节码的 JIT 编译性能提升最为显著。
