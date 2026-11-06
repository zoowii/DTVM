import json, random, statistics
from pathlib import Path

BASE = Path(__file__).resolve().parent
DATASETS = ['mode-pilot-r3', 'candidate-pilot-r3', 'confirm-r9', 'holdout-r3', 'wapm-confirm-r21', 'wapm-screen-r7', 'short-followup-r21', 'confirm-2k-r9', 'holdout-2k-r3', 'startup-2k-r21', 'wapm-2k-r7', 'screen-followup-2k-r21', 'confirm-final-r9', 'holdout-final-r3', 'startup-final-r21', 'wapm-final-r7']
rng = random.Random(2026110632)
result = {}
for dataset in DATASETS:
    root = BASE / dataset
    rows = [json.loads(s) for s in (root / 'samples.jsonl').read_text().splitlines()]
    manifest = json.loads((root / 'manifest.json').read_text())
    assert all(r['exit'] == 0 for r in rows)
    cases = {}
    for case in sorted({r['case'] for r in rows}):
        current = [r for r in rows if r['case'] == case]
        names = sorted({r['variant'] for r in current})
        variants = {v: {r['round']: r['wall_ms'] for r in current if r['variant'] == v and r['round'] >= 0} for v in names}
        pairs = {}
        comparisons = [(v, 'main') for v in names if v != 'main']
        comparisons += [('candidate', v) for v in ['wt45', 'revert'] if v in variants and 'candidate' in variants]
        for candidate, reference in comparisons:
            samples = [variants[candidate][i] / variants[reference][i] for i in variants[candidate]]
            boots = sorted(statistics.median(rng.choices(samples, k=len(samples))) for _ in range(10000))
            pairs[candidate + '/' + reference] = {'median_ratio': statistics.median(samples), 'bootstrap95': [boots[250], boots[9749]]}
        outputs = {stream: len({r[stream + '_sha256'] for r in current}) for stream in ['stdout', 'stderr']}
        is_poly = any('polybenchc/' in arg for cmd in manifest['commands'][case].values() for arg in cmd)
        if is_poly or case in ['base64cli', 'md5', 'cowsay', 'echo']:
            assert outputs == {'stdout': 1, 'stderr': 1}, (dataset, case, outputs)
        cases[case] = {'rounds': len(next(iter(variants.values()))), 'medians_ms': {v: statistics.median(s.values()) for v, s in variants.items()}, 'ranges_ms': {v: [min(s.values()), max(s.values())] for v, s in variants.items()}, 'paired_ratios': pairs, 'output_hash_counts': outputs}
    result[dataset] = cases
(BASE / 'analysis.json').write_text(json.dumps(result, indent=2) + '\n')
for dataset in ['confirm-final-r9', 'startup-final-r21']:
    for case, r in result[dataset].items():
        print(dataset, case, json.dumps({'medians': r['medians_ms'], 'candidate/main': r['paired_ratios']['candidate/main'], 'candidate/wt45': r['paired_ratios']['candidate/wt45']}))
