# Marketplace Walks

Amazon-first; deltas for Walmart, Target, and TikTok Shop at the end. A marketplace walk always covers three paths: search, browse, and the detail page. Most sellers only ever look at their own detail page, which is why the search and browse paths usually produce the biggest findings.

## Contents
- The search path
- The browse path
- The detail page
- Offer and delivery
- Other marketplaces: deltas

## The search path

Enter by searching the persona's exact phrases (from the persona's five fields), on a phone-width viewport when possible.

- **Page-1 read.** Where does the product rank organically? How much sponsored inventory sits above it? What is the price band on page 1 — is this product an outlier high or low, and would the persona notice?
- **The thumbnail test.** At grid size, next to 40 neighbors: does the main image say what the product is and give one reason to pick it? Would the persona's thumb stop?
- **Title truncation.** Mobile shows roughly the first 70–80 characters. Do the words that do the selling survive the cut, or is the front loaded with brand codes and sizes?
- **The ratings line.** Count and average versus the page-1 norm. A below-norm review count suppresses clicks regardless of how good the product is; if this is the finding, it outranks everything on the detail page.
- **Badges.** Best Seller, Amazon's Choice, deal flags — on this product or on the competitors beside it?

## The browse path

Enter through the category tree as a low-intent shopper, then apply the two or three filters the persona would actually set (price band, rating 4+, Prime, brand).

- **Does the product survive the filters?** Missing attributes and misclassified browse nodes silently remove products from filtered results — the most invisible merchandising defect on a marketplace.
- Where does it sit in the default sort, and what surrounds it there?

## The detail page

- **Images.** Count them (seven-plus with video is the competitive norm in most categories). Check the mobile crop, whether infographic text is legible at phone size, the mix of white-background and in-use shots, and video presence.
- **Title and bullets, skim test.** Read only the first three words of each bullet — does the skim alone tell the story? Does any bullet answer the objection raised in the top negative review?
- **Price framing.** Versus the page-1 band; per-unit price where it applies; coupon and deal badging; whether a strike-through anchor is doing any work.
- **Reviews, read as the persona.** Count, average, and recency — are the ten most recent from this quarter or from last year? Read the top negative review in full; the persona will. Check for reviews with photos and for seller responses.
- **Q&A.** Are the top questions answered? An unanswered question is an objection published on your own page.
- **A+ / brand content.** Present, and doing work (comparison chart, use-case blocks), or decoration? A comparison table against the brand's own family keeps an undecided shopper inside the brand.
- **Variations.** Sizes and colors consolidated on one listing (reviews pool, ranking concentrates) or fragmented across listings (both split)?

## Offer and delivery

- The delivery promise is a conversion driver: what date does the persona see, and what do the page-1 competitors promise?
- Stock state, quantity limits, who the seller of record is, and whether a third-party offer has taken the buy box at a different price.

## Per-marketplace rules — load only the one being walked

The method above is universal; hard limits and ranking mechanics are not. Each supported marketplace has its own file with official listing rules (sourced and dated), ranking mechanics, expert practice, and marketplace-specific walk checks:

- [marketplaces/amazon.md](marketplaces/amazon.md)
- [marketplaces/walmart.md](marketplaces/walmart.md)
- [marketplaces/ebay.md](marketplaces/ebay.md)
- [marketplaces/etsy.md](marketplaces/etsy.md)
- [marketplaces/tiktok-shop.md](marketplaces/tiktok-shop.md)
- [marketplaces/shopify.md](marketplaces/shopify.md) — the platform's rules plus the Shop app surface; the store walk itself lives in dtc-site.md

Read the file for the marketplace being walked before the detail-page pass. Do not load the others.

**Freshness rule:** every file carries a "Sources verified" date. If a finding hinges on a hard limit (character count, pixel minimum, image count) and that date is more than ~90 days old — or the live page contradicts the playbook — re-fetch the official source URL when network tools are available, cite what the source says today, and note the drift in the report so the playbook gets corrected.

For a marketplace with no file yet: use the universal method, state in the report that no verified playbook exists for it, and pull the marketplace's official seller documentation live if network tools allow.
