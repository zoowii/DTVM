# Private loop tiering evidence

Parent engine: upstream main 193b8d2e8ddeb54af974bc8a2b9cc52b838de8b2.
`implementation.patch` applies to that commit. This evidence branch does not
install the implementation into its source tree. The parent research branch
contains the earlier WAPM/FastRA assembly study.

`pilot-r7` and `confirm-r31` use the original factor-4 model. `final-r31`,
`broad-r7` and `sensitivity-r11` use factor 32 and production SHA
ed77ecc2816738e2a7a8c97de3a8ea991da32a252624b43bb1fdb815e1f2ecfd.
The xchg read/write constraint fix produced the same production binary hash.
All frozen binaries remain in the execution workspace; hashes, exact commands,
inputs and every timed process exit/output hash are in each manifest/samples.
`last-outputs.json` retains the last actual outputs; per-round hashes are not
replaced by these last outputs. Random UUID/fortune text can vary.

`analyze.py` regenerates `analysis.json` using a fixed bootstrap seed, 10,000
resamples of the paired median time ratios, excluding round -1. Intervals are
pointwise and do not correct multiple comparisons. Medians across different
runs must not be pooled. Diagnostics have statistics enabled and are excluded
from timed data. Compilation budget is soft elapsed time, not CPU time or a
hard deadline. All timing sessions ran without builds/tests/profiles.

Validation logs contain 14 unit, 98 MIR and 97 WAST tests per mode. Fixtures were
generated with tests/wast/spec.patch applied. A review rerun initially regenerated
unpatched elem fixtures after the submodule patch was reversed; regenerating
with the canonical patch restored all 97 passes in all four modes. The spec
submodule is left clean. format-final.log is empty on successful formatting.
