# Changelog

Feature releases get a version bump and a GitHub Release with the built zip. The site changelog at [jeremyperonto.com/walk-the-store](https://jeremyperonto.com/walk-the-store/#changelog) mirrors this file.

## 1.2.0 — 2026-07-25

- Update notifier: the skill checks `latest.json` (manifest only, never instructions) at walk start when network tools are available, and tells you when a newer version exists — with the update path for how you installed.
- Marketplace distribution: install and auto-update via `/plugin marketplace add jeremyperonto/claude-plugins`.
- Compatibility note: claude.ai requires code execution enabled.

## 1.1.0 — 2026-07-24

- Reports became work orders: Where / Saw / Matters / Fix / Steps / Verify / Effort, Inspected tables per channel, file:line locations when the repo is known.
- Exhibits: numbered, captioned screenshots embedded inline in the report — element crops, gap captures, product-image analysis.
- Lean-prose standard; verify platform capabilities before prescribing steps.

## 1.0.0 — 2026-07-24

- Initial release: persona-based walks (three-test personas, lean-back/lean-forward passes), channel playbooks (site, marketplace, app store), cross-channel consistency check, measurement built in (baseline, `wts-` walk tag, scheduled re-walk).
