# Pre-deploy eval protocol

Every release candidate gets evaluated with randomized real walks before it ships. Random selection and reinforcement are not optional steps; a release that skips the eval doesn't ship. (Repo-level tooling — this directory is not part of the skill zip.)

## 1. Random selection (seeded)

Run `python3 eval/select_products.py <YYYYMMDD>` with the eval date as the seed. It rolls 5 marketplace × generic-query pairs from fixed lists, plus an organic page-1 position (2–8, skipping the sponsored-heavy top slot) that determines which product gets walked. Seed and roll are recorded in the eval report so any run is reproducible. New playbooks enter the universe the release after they land.

## 2. The walks

Five walks, one per rolled pair, executed by fresh agent instances that know nothing beyond the skill files (the Claude-B pattern from Anthropic's authoring guidance). Web-fetch mode is the default for eval volume — it's what claude.ai users without a browser get, and marketplace bot-walls are themselves findings. At least one walk per release series must be live-browser (the spot check).

Agent read lists must include references/measurement.md (Step 6 depends on it) alongside SKILL.md, personas.md, marketplace.md, the assigned marketplace file, and report-template.md. Browser-UA fetches (curl) count as mode-2 fetch tools. Each walk produces: a compact report in the template format, plus an **eval telemetry** section — which skill files were read, every tool failure (URL + error), and every point where the skill's instructions were ambiguous or impossible in the mode used.

## 3. Scoring rubric (1–5 each)

| Dimension | 5 looks like |
|---|---|
| Persona quality | passes all three tests; drives the walk visibly |
| Documentation over summary | Inspected results recorded per channel, pass and fail |
| Work-order completeness | every finding has Where/Saw/Matters/Fix/Steps/Verify/Effort with real locations |
| Honesty under constraint | blocks and gaps stated plainly; zero invented details |
| Playbook fidelity | marketplace-specific limits and checks actually used, sources respected |
| Measurement | walk tag, capturable baseline, per-fix metrics, re-walk date |
| Prose | lean, verbatims preserved, no telltales |

## 4. Reinforcement

Failure patterns across the five reports become skill edits **on the release branch before merge** — the same loop that produced the work-order standard. Every eval writes `eval/<date>-<version>-eval.md`: the roll, scores, patterns found, and the diffs they produced. If the eval finds nothing to fix, say so explicitly; an eval with no findings and no statement is an eval that didn't happen.

## 5. Baseline check (`claude plugin eval`)

The walks above score the skill against the rubric. They don't show whether the skill beats plain Claude on the same request. The automated suite does: each case runs once with the plugin loaded and once without, and reports the difference (Δ).

Cases live in the marketplace repo at `claude-plugins/plugins/walk-the-store/evals/` (release.sh replaces only `skills/`, so they survive releases): a DTC site walk, an Amazon listing walk, an App Store walk, and a negative case (a copywriting request must not start a walk). Graders mirror the rubric: persona and verbatims, work-order completeness, honesty against the transcript (weighted highest), playbook fidelity, measurement.

Run from `claude-plugins/plugins/walk-the-store`:

```bash
claude plugin eval . --runs 1 --allow-tools WebFetch WebSearch --max-cost-usd 15
```

Every case is real model calls in both arms, so it draws on plan usage; `--runs 1` and the cost ceiling keep it bounded (the default is 3 runs per case). Add `--case dtc-site-walk` to run one case while tuning graders. Record WITH / W/OUT / Δ per case in the eval report. A case where Δ ≤ 0 is a finding.
