import json, random, statistics
from pathlib import Path

rng = random.Random(2026110620)
result = {}
for dataset in ['pilot-r7', 'confirm-r31', 'final-r31', 'broad-r7', 'sensitivity-r11']:
    rows = [json.loads(line) for line in (Path(__file__).resolve().parent / dataset / 'samples.jsonl').read_text().splitlines()]
    cases = {}
    for case in sorted({row['case'] for row in rows}):
        variants = {v: {row['round']: row['wall_ms'] for row in rows if row['case'] == case and row['variant'] == v and row['round'] >= 0} for v in sorted({row['variant'] for row in rows})}
        medians = {v: statistics.median(samples.values()) for v, samples in variants.items()}
        paired = {}
        for candidate, reference in [(v, 'main') for v in variants if v != 'main'] + [('budgeted', 'off'), ('budgeted', 'wt45')]:
            samples = [variants[candidate][i] / variants[reference][i] for i in variants[candidate]]
            boots = sorted(statistics.median(rng.choices(samples, k=len(samples))) for _ in range(10000))
            paired[candidate + '/' + reference] = {'median_ratio': statistics.median(samples), 'bootstrap95': [boots[250], boots[9749]]}
        cases[case] = {'medians_ms': medians, 'paired_ratios': paired, 'rounds': len(next(iter(variants.values())))}
    result[dataset] = cases
Path(__file__).resolve().parent.joinpath('analysis.json').write_text(json.dumps(result, indent=2) + '\n')
for name in ['final-r31', 'sensitivity-r11']:
    print(name, json.dumps(result[name]['pi1000'], indent=2))
