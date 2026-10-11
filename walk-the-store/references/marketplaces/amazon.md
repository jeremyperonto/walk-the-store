# Amazon — listing rules and functional best practices

Sources verified: 2026-07-26. If a finding hinges on a hard limit below and this date is >90 days old — or the live page contradicts it — re-fetch the source before citing, use what the source says today, and flag the drift.

## Hard rules (official)

- **Title:** at most 200 characters, including spaces, in most categories under the January 21, 2025 policy; confirm the category and store-specific limit. Special characters `! $ ? _ { } ^ ¬ ¦` are prohibited unless part of the brand name. No word repeated more than twice, except prepositions, articles, and conjunctions. Do not infer listing suppression from length alone: the announcement says listings remain active during the correction process.
- **Main image:** pure white background (RGB 255,255,255); product fills ≥85% of the frame; no text, logos, watermarks, or accessories not in the sale. Minimum 1,000px on the longest side to enable zoom; 1,600px+ recommended.
- **Image slots:** up to 9 per listing (roughly 7 render in the gallery plus video). Every listing requires at least one compliant image.
- **Indexed search fields:** title, bullets, description/A+ (partial), backend search terms. A+ Content and Brand Story require Brand Registry.
- **Variations:** verify legitimate variation relationships and the reviews actually shown for the selected child. Amazon's February–May 2026 rollout restricts review sharing to eligible minor differences that preserve functionality; a shared parent does not guarantee shared reviews. Check the current review-sharing guidelines and category variation requirements before recommending consolidation. Do not claim a ranking increase from consolidation or merge functionally different products to collect reviews.

## Ranking and content-quality mechanics

- Title keywords weigh heaviest; mobile shows roughly the first 70–80 characters.
- Attribute completeness feeds browse filters — a missing attribute silently removes the product from filtered results.
- Reviews drive both ranking and conversion; recency matters once volume passes the category norm.
- Brand-registered sellers can A/B test title, main image, and A+ via Manage Your Experiments — the native proof pipeline for any fix this playbook produces.

## Expert practice (beyond the docs)

- Structure titles Brand + Line + Product type + Key attribute + Size/Count; put the words that sell inside the first 80 characters.
- 7+ images and video is the competitive norm in most categories: white-background set, lifestyle in-use, scale/dimension infographic (text legible at phone width), comparison chart.
- Answer the top negative review's objection inside a bullet and in A+ — shoppers read that review; the listing should too.
- Backend search terms: no repeats of title words, no competitor brands (policy violation), fill the byte limit with synonyms and misspellings shoppers actually type.

## Walk checks specific to Amazon

- Title truncation at ~80 chars against the actual grid; thumbnail against the real page-1 neighbors.
- Buy Box state: who holds it, at what price; a 3P suppressed Buy Box changes every conversion number.
- Badge presence (Best Seller, Amazon's Choice, coupon/deal flags) on the product and its neighbors.
- Delivery promise date vs. page-1 competitors.
- A+ present and working (comparison module keeping shoppers in-family) or absent/decorative.

## Mode-2 fetchability (observed 2026-07-26)

SERP, Best Sellers nodes, review pages, and brand stores return 503 to fetch tools. Product pages may return 200 with a body-stripped shell — treat as a block; the title survives in the meta tag (label it as such). Workable proxies, labeled: Google's index of amazon.com listings for selection order; third-party trackers for price/review/sales snapshots (cite tracker + snapshot date).

## Sources (official)

- [Product title policy announcement](https://sellercentral.amazon.com/seller-forums/discussions/t/b2b15728-0d43-453e-974f-59eb63f73059/) — News_Amazon; title limit and exceptions rechecked 2026-10-11.
- [Review sharing changes for variations](https://sellercentral.amazon.com/seller-forums/discussions/t/e182e093-6788-4d48-9526-7039ec8e0d54) — News_Amazon; functionality-based eligibility and February–May 2026 rollout rechecked 2026-10-11. Other rules retain their individual verification dates.
- [Product image requirements](https://sellercentral.amazon.com/help/hub/reference/external/G1641) — Seller Central help, public. Verified 2026-07-26.
- [Amazon seller education hub](https://sell.amazon.com/learn) — official, public. Verified 2026-07-26.
- Per-category style guides: Seller Central → Help → search "style guide" (login required — note in reports when a category guide is the authority).
