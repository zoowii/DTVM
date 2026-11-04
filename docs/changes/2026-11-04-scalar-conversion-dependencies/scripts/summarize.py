# Copyright (C) 2026 the DTVM authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
"""Summarize archived process observations; run from repository root."""
import json
from pathlib import Path
import random
import statistics

folder = Path(__file__).resolve().parents[1]
data = json.loads((folder / 'measurements.json').read_text())
summary = {}
for phase, payload in data['phases'].items():
    rows = [dict(zip(payload['columns'], r)) for r in payload['samples']]
    groups = sorted({(r['case'], r.get('count', 1), r.get('mode', '')) for r in rows})
    cells = []
    for case, count, mode in groups:
        rs = [r for r in rows if r['case'] == case and r.get('count', 1) == count
              and r.get('mode', '') == mode and r['round'] >= 0]
        medians = {v: statistics.median(r['wall_ms'] for r in rs if r['variant'] == v)
                   for v in {r['variant'] for r in rs}}
        comparisons = []
        for before, after in [('baseline', 'candidate'), ('off', 'zero-off'),
                              ('off', 'budgeted'), ('zero-off', 'zero-budgeted'),
                              ('off', 'zero-budgeted'), ('wasmtime', 'zero-budgeted')]:
            if before not in medians or after not in medians:
                continue
            a = {r['round']: r['wall_ms'] for r in rs if r['variant'] == before}
            b = {r['round']: r['wall_ms'] for r in rs if r['variant'] == after}
            assert a.keys() == b.keys()
            rounds = sorted(a)
            rng = random.Random(20261104)
            bootstrap = []
            for _ in range(10000):
                indices = rng.choices(rounds, k=len(rounds))
                bootstrap.append(100 * (statistics.median(b[i] for i in indices)
                                        / statistics.median(a[i] for i in indices) - 1))
            bootstrap.sort()
            comparisons.append({'before': before, 'after': after,
                                'change_pct': 100 * (medians[after] / medians[before] - 1),
                                'paired_bootstrap_95_pct': [bootstrap[250], bootstrap[9749]]})
        cells.append({'case': case, 'count': count, 'mode': mode, 'medians_ms': medians,
                      'comparisons': comparisons})
    summary[phase] = cells
(folder / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
print('Wrote', folder / 'summary.json')
