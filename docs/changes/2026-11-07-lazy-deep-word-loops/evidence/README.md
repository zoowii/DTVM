# Rebased PR642 and dense integer-loop evidence

Read ../README.md for the final implementation/results and REPORT.md for the
completed original PR642 full 30-PolyBench / 20-WAPM study and review.
The source tree on this branch is the measured refined prototype be96a8c;
its parent 148f1ac preserves the rejected broad prototype. The code PR can
squash that development history; measured production source files stay identical.
implementation.patch applies to merged upstream af4b07b and includes report edits
before the later immutable archive link was inserted.

Cohorts are separate experiments, never pooled. Initial main=59fe3cc versus
merged implementation=e678e1e (tree exactly equals merge af4b07b). word-* cohorts
use merged main af4b07b and rejected prototype148f1ac. word2-* cohorts use merged
main af4b07b and refined prototypebe96a8c. Exact binaries, hashes, commands,
inputs, seeds and every process sample are in manifests/samples. Cohort names
and completion counts are in cohorts.json. round -1 is excluded warmup.
integer-modes-r3 was interrupted after one warmup and is explicitly excluded;
the resumed cohort starts afresh. One interrupted WT native capture is also
marked and excluded. No samples are spliced across environment restarts.

summary.json/CSV and summarize.py retain all comparisons. Pointwise bootstrap
intervals use 10,000 paired-median resamples with fixed seed; no multiplicity
correction. Small screens cannot establish equivalence. All failed screens and
independent followups remain. sam exits1 on every engine and is excluded from
performance medians; Fortune/UUID outputs may vary. Other completed deterministic
outputs and full numeric matrices match. Raw outputs were byte-captured, not
lossily decoded. output-previews.json keys are full decompressed-output SHA256,
with byte counts and truncated previews; full compressed/deduplicated matrices
remain in the executor and are not duplicated in this archive. Frozen executables
also remain there, with older diagnostic executables gzip-compressed.

Diagnostic builds have separate source snapshots and never supplied formal
production timing rows. Their switches control selection/dumps only in those
builds; the code PR has no research environment hooks. WT main captures are live
perfmap plus /proc/own-child/mem, not AOT listings. Captures ran outside timing.
Static minimal compute-loop counts are not hardware retired-instruction counts.
Probes identify functions observationally; production contains no name/ID gates.
source-word-v1/v2 plus compiler snapshots reconstruct prototype/diagnostic logic.
Final production source matches refined prototype; measured SHA256 is
580305bd1e92b0953e67637f7a6955e208e9a3b9c6a5e2caff846780c2d82ad2.

Final validation: 19 lazy JIT,98 MIR,97 WAST per each of four modes. Canonical
spec.patch was applied before fixture generation and reversed afterwards. Empty
format logs mean pass. Original16-test and rejected-prototype logs are distinct;
no claim is made that a different version's tests were rerun for the final build.
Only one Linuxx86-64 host/affinity setup was measured; exact options are recorded.
