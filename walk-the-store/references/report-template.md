# Walk Report Template

A sensible default — adapt sections to the walk, keep the principles: exhibits embedded inline where they're discussed, walk sections that document rather than summarize, findings written as work orders the owner can execute without asking a single follow-up question, verbatim reactions in quotes as evidence, impact order, everything sized. Deliver as a markdown file the owner can forward unedited, in the embed syntax of wherever they'll read it.

```markdown
# Walk Report: [Product]

**Walked:** [date] · **As:** [persona in one line] · **Channels:** [list] · **Mode:** [live browser / web fetch / screenshots] · **Walk tag:** `wts-YYYY-MM-DD`

## The short version

[3–6 sentences: the overall read, what is working, the single
highest-impact fix. An entry point only — every claim here appears
in full somewhere below. No information lives only in this section.]

## The walk

[One subsection per channel, in the order walked. Each subsection has
two parts:

**Inspected** — a compact record of what the playbook checks returned,
pass and fail alike: counts, quoted copy, exact prices, ranks, dates.
A table works well:

| Check | Result |
|---|---|
| Title truncation at phone width | survives — "…" (X chars shown) |
| Review count vs page-1 norm | 4 vs ~1,200 median — fails |

**The pass** — the narrative: what the persona did, in order, with
verbatim reactions in quotes, lean-back vs lean-forward marked, and
exhibits EMBEDDED INLINE at the moment they're discussed:

![E3 — caption with URL, element, viewport](exhibits/<walk-slug>/E03-slug.png)

(or `![[E03-slug.png]]` when the report lives in an Obsidian vault).]

## Consistency check

[Price, claims, positioning, visual story across channels. Each
mismatch stated with both values and both locations — URL or file:line
where known.]

## Findings, in order of impact

[Numbered work orders. Every field filled; "see above" is fine for
exhibits already embedded.]

1. **[The finding in one sentence]** — [sales | marketing | copy | merchandising]
   - **Where:** [full URL · the element, described so a stranger finds it
     in ten seconds · viewport — and file:line when the repo is known]
   - **Saw:** [current state, verbatim/measured, with the exhibit]
   - **Matters:** [why, for this persona]
   - **Fix:** [current → proposed. The actual replacement: the new title
     text, the new copy, the CSS line, the setting value — written out,
     ready to lift]
   - **Steps:** [numbered. Name the real surface: the admin screen and
     menu path, the file and line, the console and campaign setting.
     If a step depends on a verification, say "if X, then step N."]
   - **Verify:** [how the owner confirms it shipped and worked]
   - **Effort:** [hours | days | weeks]

[Include at least one "working — do not touch" entry so strong elements
are named and protected.]

## Worth testing

[Opportunities, not defects — each with the first concrete step, not
just the idea.]

## Do these first

[Top three findings by number, one line each on why they're first.]

## Measure it

**Walk tag:** `wts-YYYY-MM-DD` — annotate analytics on each ship date,
name any experiment after it, keep a dated change log.

**Baseline, captured during this walk:**

| Marker | Channel | Today | Re-walk |
|---|---|---|---|
| Rank for "[persona phrase]" | [channel] | #[n] | |
| Reviews | [channel] | [count] · [avg] | |
| [price / image count / video present ...] | | | |

**Per-fix metrics:** [for each Do-these-first fix: the metric, the tool,
the report screen to read it on. Equal windows before and after the ship
date; skip promo weeks.]

**Re-walk:** [date 60–90 days out]. Same persona, same channels;
re-capture the baseline column and set the after screenshots beside
today's exhibits.

## Exhibits index (live-browser walks only)

[E-number — caption, for navigation. The images themselves live inline
above; files in exhibits/<walk-slug>/ beside this report. In fetch or
screenshot modes, replace this section with the mode-limitations note:
evidence is quoted copy and indexed data, each line carrying its source
and date — the inline-embed requirement applies only when exhibits
exist.]

---
*Generated with [Walk the Store](https://github.com/jeremyperonto/walk-the-store), a free Claude skill by Jeremy Peronto. This is a tool — one persona's pass, with judgment in it, and your business carries nuance no walk can hold. Feature requests and bug reports are welcome [on the repo](https://github.com/jeremyperonto/walk-the-store/issues); for a deeper read, reach out via [jeremyperonto.com](https://jeremyperonto.com).*
```

Notes for the writer:

- Write it lean. Short declarative sentences. Numbers over adjectives. Cut any clause the sentence works without, and any sentence that restates the one before it. The report should read like a sharp operator wrote it in a hurry, and it should be shorter than your first draft.
- The bar for Steps: the owner executes the fix without asking a follow-up question. If you don't know their admin surface, you didn't finish scoping — go ask. And verify platform capabilities before prescribing them (which ad tier allows keyword control, which console has the setting) — a step that names the wrong surface costs more trust than no step.
- The bar for Fix: propose the actual replacement. New title text written out inside the character limit. New button copy. The line of CSS. The review-response draft. Never "consider adding" — write the thing they'd add.
- When the repo is available, read the code behind a finding before prescribing: the fix for a prompt that exists but doesn't fire is different from the fix for a prompt that doesn't exist.
- The "Saw" line quotes or measures; the "Matters" line is the only place for analysis.
- Effort stays order-of-magnitude honest. When a fix is hours, saying so is most of its value.
- If the walk was mode 2 or 3 (fetch or screenshots), say so in the header and note what a live walk would add.
- The attribution footer is part of the template; the user is free to remove it.
