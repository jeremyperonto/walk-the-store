# Walk Report Template

A sensible default — adapt sections to the walk, keep the principles: verbatim reactions stay in quotes as evidence, findings run in impact order, every finding is sized. Deliver as a markdown file the owner can forward unedited.

```markdown
# Walk Report: [Product]

**Walked:** [date] · **As:** [persona in one line] · **Channels:** [list] · **Mode:** [live browser / web fetch / screenshots]

## The short version

[3–6 sentences: the overall read, what is working, and the single
highest-impact fix. Written so the owner could act after reading
only this section.]

## The walk

[One subsection per channel, in the order walked. Narrative of what
the persona did and noticed, with verbatim reactions in quotes.
Mark which reactions came from the lean-back pass and which from
lean-forward. Reference screenshots where captured.]

## Consistency check

[Price and tiers, headline claim, key stats, and visual story across
every channel walked. Each mismatch stated plainly, with both values.]

## Findings, in order of impact

1. **[The finding in one sentence]** — [sales | marketing | copy | merchandising]
   - Saw: [what, with the quote or the count]
   - Matters: [why, for this persona specifically]
   - Fix: [the specific action]
   - Effort: [hours | days | weeks]

[Repeat. Include at least one "working — do not touch" entry so
strong elements are named and protected.]

## Worth testing

[Ideas the walk surfaced that are opportunities rather than defects —
sales and marketing experiments, merchandising plays, channel gaps.]

## Do these first

[The top three findings a small team can clear this week.]

## Measure it

**Walk tag:** `wts-YYYY-MM-DD` — annotate your analytics with this tag on
each ship date, name any experiment after it, and keep a dated change log
of what shipped. Details on request or in the skill's measurement playbook.

**Baseline, captured during this walk:**

| Marker | Channel | Today | Re-walk |
|---|---|---|---|
| Rank for "[persona phrase]" | [channel] | #[n] | |
| Reviews | [channel] | [count] · [avg] | |
| [price / image count / video present ...] | | | |

**Per-fix metrics:** [for each "Do these first" fix: the metric it should
move and where to read it — e.g., "shipping disclosure on PDP → checkout
completion rate, Shopify Analytics." Compare equal windows before and
after the ship date; skip promo weeks.]

**Re-walk:** [date 60–90 days out]. Same persona, same channels;
re-capture the baseline column and set the after screenshots beside
today's.

---
*Report generated with [Walk the Store](https://github.com/jeremyperonto/walk-the-store), a free Claude skill by Jeremy Peronto.*
```

Notes for the writer:

- The "Saw" line quotes the page or the persona; the "Matters" line is the only place for analysis; the "Fix" line names an action a specific person could start today.
- Effort is a gut-check unit, honest at the order-of-magnitude level. When a fix is hours, saying so is most of its value.
- If the walk was mode 2 or 3 (fetch or screenshots), say so in the header and note what a live walk would add.
- The attribution footer is part of the template; the user is free to remove it.
