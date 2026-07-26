# eBay — listing rules and functional best practices

Sources verified: 2026-07-26. If a finding hinges on a hard limit below and this date is >90 days old — or the live page contradicts it — re-fetch the source before citing, use what the source says today, and flag the drift.

## Hard rules (official)

- **Title:** 80 characters maximum. No all-caps spam; avoid keyword stuffing (Best Match penalizes).
- **Photos:** every listing requires at least one photo. Minimum 500px on the longest side; 1600×1600+ is the stated best practice for zoom. No borders. Watermarks only for ownership/attribution — never marketing or item details. Stock photos may not be the primary photo for used items.
- **Item specifics:** required specifics must be filled at listing; recommended specifics (brand, size, type, color, style, product identifiers like MPN/GTIN) drive search matching on eBay and external search.

## Ranking and content-quality mechanics

- **Best Match** rewards: complete item specifics, competitive price + shipping (free shipping weighs), seller performance, listing quality. Titles matter, but specifics are the structured-data backbone.
- Product identifiers (GTIN/MPN/brand) attach listings to catalog pages and Google Shopping — missing identifiers orphan the listing.
- Returns policy and handling time surface in search filters; a 30-day-returns listing survives filters a no-returns listing doesn't.
- Condition accuracy is trust-critical in the used/refurb segments that define eBay; the persona reads condition notes like a contract.

## Expert practice (beyond the docs)

- Spend all 80 title characters on searchable attributes: Brand + Model + Product type + Key spec + Size/Color — zero filler words ("L@@K," "WOW" are fossils that still appear and still repel).
- 8–12 photos for anything used: all angles, flaws photographed honestly (an honest flaw photo lowers returns and raises conversion).
- Fill every recommended item specific; eBay's own data shows specifics-complete listings get materially more impressions — treat the specifics panel as the listing.
- Price + shipping as one number: the persona compares landed cost; "free shipping" with price rolled in usually wins the sort and the click.

## Walk checks specific to eBay

- Search the persona's phrase, note the sort (Best Match) and where the listing lands; check which item specifics the left-rail filters expose — does the product survive each one the persona would tap?
- Title truncation in grid vs. the full 80 characters.
- Condition description vs. photos — any gap is a returns machine and a finding.
- Landed cost vs. the visible competition; seller feedback score in the persona's field of view.

## Mode-2 fetchability (observed 2026-07-26)

Standard fetch tools fail on all ebay.com URLs (timeouts or bot-block "Error Page"); /sch/ search and /itm/ item pages stay blocked under every method tried. Browser-UA fetches succeed on /b/ browse nodes and /p/ catalog pages, which carry full embedded JSON state — ranked tiles, prices, sponsored flags, ratings, competing offers. Sanctioned substitution: the browse node for the persona's phrase stands in for the search page, sponsored tiles skipped, substitution labeled. Seller descriptions live in iframes and stay unreadable.

## Sources (official)

- [Listing best practices](https://www.ebay.com/sellercenter/listings/create-listings/best-practices) — eBay Seller Center, public. Verified 2026-07-26.
- [Adding pictures to your listings](https://www.ebay.com/help/selling/listings/adding-pictures-listings?id=4148) — eBay Help, public. Verified 2026-07-26.
