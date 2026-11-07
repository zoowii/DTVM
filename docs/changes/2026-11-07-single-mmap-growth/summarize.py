# SPDX-License-Identifier: Apache-2.0
import argparse, collections, csv, json, random, statistics
from pathlib import Path

p = argparse.ArgumentParser()
p.add_argument("folder")
p.add_argument("--growth", action="store_true")
a = p.parse_args()
folder = Path(a.folder)
rows = [json.loads(l) for l in (folder / "samples.jsonl").read_text().splitlines()]
rows = [r for r in rows if r["round"] >= 0]
g = collections.defaultdict(lambda: collections.defaultdict(dict))
metrics = ["grow_ms", "wall_ms", "minor_faults"] if a.growth else ["wall_ms"]
for r in rows:
    g[r["case"]][r["engine"] if a.growth else r["variant"]][r["round"]] = r
rng = random.Random(2026110787)
result = []
for case, groups in g.items():
    baseline = "pr644" if a.growth else "previous"
    if baseline not in groups:
        baseline = "main"
    for metric in metrics:
        for k, data in groups.items():
            med = statistics.median(r[metric] for r in data.values())
            paired = [
                data[i][metric] / groups[baseline][i][metric]
                for i in sorted(data.keys() & groups[baseline].keys())
            ]
            ratio = statistics.median(paired)
            n = len(paired)
            boots = sorted(
                statistics.median(rng.choices(paired, k=n)) for _ in range(10000)
            )
            result.append(
                {
                    "case": case,
                    "metric": metric,
                    "engine": k,
                    "n": n,
                    "median": med,
                    "baseline": baseline,
                    "paired_ratio": ratio,
                    "ci_lo": boots[249],
                    "ci_hi": boots[9749],
                }
            )
(folder / "summary.json").write_text(json.dumps(result, indent=2) + "\n")
with (folder / "summary.csv").open("w", newline="") as f:
    w = csv.DictWriter(f, fieldnames=result[0].keys(), lineterminator="\n")
    w.writeheader()
    w.writerows(result)
for case in g:
    print(
        case,
        " | ".join(
            f'{r["engine"]} {r["median"]:.4f} ({r["paired_ratio"]:.4f} [{r["ci_lo"]:.4f},{r["ci_hi"]:.4f}])'
            for r in result
            if r["case"] == case and r["metric"] == metrics[0]
        ),
    )
