# Etsy — listing rules and functional best practices

Sources verified: 2026-07-26 (Etsy's help center bot-shields automated checks; URLs are canonical from help.etsy.com and load in browsers). If a finding hinges on a hard limit below and this date is >90 days old — or the live page contradicts it — re-fetch the source before citing, use what the source says today, and flag the drift.

## Hard rules (official)

- **Title:** up to 140 characters; Etsy's own guidance suggests under ~15 words, stating clearly what the item is with the traits that make it special.
- **Photos:** at least 2,000px wide recommended; up to 10 per listing plus video. Alt-text (image descriptions) supported for accessibility.
- **Tags and attributes:** both must be filled — Etsy's SEO guidance names title, description, images, and video as the four elements search reads, with tags/attributes matching queries to listings. 13 tags per listing.
- **Handmade/vintage/craft-supply policy** frames everything: the persona is buying from a person; policy-violating "reseller" signals are fatal here in a way no other marketplace matches.

## Ranking and content-quality mechanics

- Etsy search matches query → title/tags/attributes/categories, then ranks by listing quality score (clicks/favorites/purchases per view), recency, shop performance (reviews, on-time shipping), and shipping price — **free shipping (or a US free-shipping guarantee) is a ranking input**.
- The first sentence of the description feeds Google results; front-load it.
- Multi-word tag phrases beat single words (13 slots; "personalized dog collar" outworks "dog" + "collar" + "personalized").
- Video autoplays in search on hover/mobile — listings with video hold attention in the grid.

## Expert practice (beyond the docs)

- Title pattern that works: primary buyer phrase first, then variants — "Linen Apron for Women | Cross Back Apron | Gardening Gift" — readable to a human, matched to three real queries.
- First photo is a thumbnail contest against a handmade-aesthetic grid: bright, tight crop, styled but legible at small size. Scale shots and size charts kill the #1 Etsy return reason (size surprise).
- Fill every attribute Etsy offers for the category (color, occasion, material) — attributes act as invisible tags.
- The persona reads the shop, not just the listing: reviews with photos, "made by" story, response time. A five-listing shop with no About section reads as a dropshipper.

## Walk checks specific to Etsy

- Search the persona's phrase; note ranking and whether the thumbnail survives the aesthetic of page 1 (Etsy grids are style-coherent; clashing thumbnails die).
- Tags/attributes audit if the owner provides listing access; otherwise infer gaps from which filters exclude the product.
- Shipping price + delivery estimate in the grid — the free-shipping sort/rank effect makes this a pricing finding, not just a logistics one.
- Shop-level trust: review count/recency, About section, policies filled.

## Mode-2 fetchability (observed 2026-07-26)

Sitewide 403 to fetch tools — search, market pages, and listings. Mode-2 walks run on search-index snippets of Etsy's own page copy; attribute every fact to the snippet. Selection proxy: the market page's "bestselling" module order as carried in the search index, labeled as Etsy-authored ordering rather than the search grid.

## Sources (official)

- [How to Create a Listing](https://help.etsy.com/hc/en-us/articles/115015628707-How-to-Create-a-Listing) — Etsy Help. Verified via canonical index 2026-07-26.
- [Search Engine Optimization (SEO) for Shop and Listing Pages](https://help.etsy.com/hc/en-us/articles/115015663987-Search-Engine-Optimization-SEO-for-Shop-and-Listing-Pages) — Etsy Help. Verified via canonical index 2026-07-26.
