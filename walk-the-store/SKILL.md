---
name: walk-the-store
description: Audits a digital storefront — a DTC or SaaS website, an Amazon or other marketplace listing, or an app store page — by shopping it as a specific, qualified customer persona, then delivers prioritized sales, marketing, copy, and merchandising recommendations. Use when the user asks to walk the store, audit or tear down a product page, listing, website, or app store presence, review a shopping experience like a customer, or figure out why a storefront isn't converting.
license: MIT
compatibility: Works best with live browser access (Claude in Chrome, Claude Code with browser tools, or computer use). Falls back to web fetch, then to user-provided screenshots.
metadata:
  author: Jeremy Peronto
  version: 1.0.0
---

# Walk the Store

Retail leaders walk their stores as customers: in through the front door, down the aisles, reading the signs, standing in line. This skill applies the same discipline to digital storefronts. Become one specific, qualified shopper, walk every path that shopper would take, record what a normal person notices, and only then turn observations into recommendations.

The deliverable is a walk report: findings ordered by impact, each specific enough to act on this week.

**Scope: mid-to-lower funnel.** The persona is already in market — the trigger in their life put them there. The walk tests whether a buyer who is already shopping finds the product and whether what they find converts them. Creating demand among people who are not shopping (brand awareness, social content, PR) is out of scope; if the walk surfaces an awareness problem, note it briefly as context and keep the findings on the funnel from search to purchase.

## The rule that matters most

You are a normal person shopping, and you stay that person until the walk is over. The moment you start seeing like a conversion consultant, the walk has ended and analysis has begun — keep the two phases separate. During the walk, record reactions in the persona's first person, verbatim: "I can't find the price." "Why do these two pages say different numbers?" "I would have closed this tab already." These verbatim reactions are the most valuable artifact the walk produces, and they survive into the final report as quotes.

## Workflow

Copy this checklist and track progress:

```
Walk Progress:
- [ ] Step 1: Scope the walk (product, channels, execution mode)
- [ ] Step 2: Build the qualified persona
- [ ] Step 3: Walk each channel — lean-back pass, then lean-forward pass
- [ ] Step 4: Cross-channel consistency check
- [ ] Step 5: Synthesize and write the report
- [ ] Step 6: Capture the baseline and set up measurement
```

### Step 1: Scope the walk

Establish before walking:

- The product, what it costs, and its category.
- Every channel where this buyer meets the product. Walk all of them, whether or not the user named them: buyers cross channels, so the walk must too.
- The execution mode (below).

| Buyer meets the product on | Walk these paths | Playbook |
|---|---|---|
| Amazon, Walmart, Target, TikTok Shop | Search path + browse path + detail page | [references/marketplace.md](references/marketplace.md) |
| Its own website (DTC, Shopify, SaaS) | Google entry + homepage + pricing + PDP + path to payment | [references/dtc-site.md](references/dtc-site.md) |
| App Store / Google Play | Google entry + store search + listing + marketing site cross-check | [references/app-store.md](references/app-store.md) |

**Execution modes, in order of preference:**

1. **Live browser** (browser automation available). The real walk. Navigate exactly as the persona would — enter through search, never by typing the destination URL. Capture exhibits at every moment that produces a reaction, per [references/exhibits.md](references/exhibits.md): numbered, captioned screenshots that ship with the report as evidence — element crops for visual defects, grid-context captures for thumbnails, viewport grabs for fold and gap findings, and analysis of the product images themselves. Run the mobile pass at a phone-width viewport (~390px) — most first visits happen on a phone. Never complete a purchase (stop at the payment page), never log into accounts, and avoid elements that trigger browser dialogs.
2. **Web fetch.** Pull the pages and work from their content. Flag in the report that layout, image, and speed observations are limited in this mode.
3. **Screenshots from the user.** Ask for the specific screens listed in the relevant channel playbook, including the search results screens. Do this rather than guessing at what a page contains.

In every mode: cite only what you actually saw. Quote real copy, name real button labels, count the actual screenshots and reviews. One invented detail voids the report.

### Step 2: Build the qualified persona

A qualified persona is a person plus a moment plus stakes: "an SMB owner in January shopping for tax software," "a parent in early August buying back-to-school clothes for two kids." Calibrate it three ways: **real** enough to shop like one person, **broad** enough to stand for a segment with real scale, and **aligned** with who the product is actually built and priced for. A persona that fails any of the three produces a confident, useless walk. Construction guide, the three tests, and calibration examples: [references/personas.md](references/personas.md).

Default to one primary persona. Add a second only when the buyer and the user differ, or when two segments walk genuinely different paths. State the persona in full at the top of the report before walking.

### Step 3: Walk each channel, twice

Every channel gets two passes:

- **Lean-back pass** — low intent, phone on the couch. Skim ruthlessly: three seconds per screen. What sticks? Would this persona stop scrolling, would they tap? Note the exact point where attention dies.
- **Lean-forward pass** — high intent, comparison shopping. Read the FAQ, read the worst review, do the price math the persona would do, open a competitor in a second tab. What question has no answer here? What breaks trust? What would send the persona away to find the answer somewhere else?

The two modes surface different findings; neither substitutes for the other. Follow the channel playbook for what to inspect on each path.

### Step 4: Cross-channel consistency check

Buyers cross-check before they spend. Compare across every channel walked: price and tiers, the headline claim, key stats, screenshots and visual identity, tone. A site that leads with engagement metrics while the listing shows a lone top-tier price is telling two different stories. Every mismatch is a finding — inconsistency reads as risk.

### Step 5: Synthesize and write the report

Now switch from shopper to operator. Convert the recorded reactions into findings, each tagged with one lens:

- **sales** — does this help close the buyer who arrived?
- **marketing** — when a buyer already in the market goes looking, does the product show up, and does what shows up earn the click?
- **copy** — do the words do work?
- **merchandising** — is the product presented to sell: images, placement, proof, price framing?

Order findings by impact on the business, never by page order. Each finding carries: what the persona saw (with the quote), why it matters for this buyer, the specific fix, and rough effort (hours / days / weeks). Use the structure in [references/report-template.md](references/report-template.md).

### Step 6: Capture the baseline and set up measurement

A walk that can't demonstrate change is an opinion. During the walk, record the external baseline — it costs nothing extra: search rank for each persona phrase on each channel, review counts and averages, price context, image and screenshot counts, and (in live-browser mode) the before screenshots. In the report, assign the walk a tag, and give each "Do these first" fix a metric and a place to read it, so the owner can line up pre/post windows with what actually shipped. Full playbook, including the tag convention and per-platform instructions: [references/measurement.md](references/measurement.md).

## Standards for a good walk

- Every recommendation is actionable by a small team inside 90 days. "Improve the UX" is never a finding.
- First impressions stay verbatim. Do not launder "I have no idea what this costs" into "pricing transparency could be improved."
- When words don't suffice, capture the exhibit. Visual findings — layout defects, image quality, missing elements, cross-channel mismatches — are claimed with numbered screenshots referenced inline, per [references/exhibits.md](references/exhibits.md).
- Impact order, honestly. If the biggest problem is zero reviews, it goes first even if it is the least interesting observation.
- Flag what is working. Strong elements are load-bearing; name them so nobody "fixes" them.
- If a channel is inaccessible, say so plainly and list the screens needed to finish the walk.
- Competitors seen during the walk are context, and worth naming: the persona saw them too.
