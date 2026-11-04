# Copyright (C) 2026 the DTVM authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
"""Recompute process medians and paired intervals from archived observations."""
import json
from pathlib import Path
import random
import statistics

folder = Path(__file__).resolve().parents[1]
data = json.loads((folder / 'measurements.json').read_text())
summary = {}
for phase, payload in data['phases'].items():
    rows = [dict(zip(payload['columns'], r)) for r in payload['samples']]
    if phase == 'matrix-r7':
        for row in rows:
            row['variant'] += '/' + row['mode']
    cells = []
    before = 'baseline/lazy-G-MT' if phase == 'matrix-r7' else 'base'
    for case in sorted({r['case'] for r in rows}):
        rs = [r for r in rows if r['case'] == case and r['round'] >= 0]
        medians = {v: statistics.median(r['wall_ms'] for r in rs if r['variant'] == v)
                   for v in sorted({r['variant'] for r in rs})}
        comparisons = []
        for after in sorted(medians):
            if after == before:
                continue
            a = {r['round']: r['wall_ms'] for r in rs if r['variant'] == before}
            b = {r['round']: r['wall_ms'] for r in rs if r['variant'] == after}
            assert a.keys() == b.keys()
            rng = random.Random(20261105)
            samples = []
            for _ in range(10000):
                indices = rng.choices(sorted(a), k=len(a))
                samples.append(100 * (statistics.median(b[i] for i in indices)
                                      / statistics.median(a[i] for i in indices) - 1))
            samples.sort()
            comparisons.append({'before': before, 'after': after,
                                'change_pct': 100 * (medians[after] / medians[before] - 1),
                                'paired_bootstrap_95_pct': [samples[250], samples[9749]]})
        cells.append({'case': case, 'medians_ms': medians, 'comparisons': comparisons})
    summary[phase] = cells
(folder / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
