# Shopify — storefront platform rules and the Shop app surface

Sources verified: 2026-07-26 (Shopify's help center bot-shields automated checks; URLs are canonical from help.shopify.com and load in browsers). If a finding hinges on a hard limit below and this date is >90 days old — or the live page contradicts it — re-fetch the source before citing, use what the source says today, and flag the drift.

Scope note: a Shopify store is the merchant's own site — the walk method lives in [../dtc-site.md](../dtc-site.md). This file adds what's Shopify-specific: platform media rules, and the **Shop app**, the marketplace surface where eligible stores are listed automatically and the merchant's content competes in someone else's feed.

## Hard rules (official)

- **Product media:** images up to 5000×5000px / 25 megapixels, file size under 20MB. All themes support images; video and 3D models require theme support.
- **Shop app eligibility:** stores meeting the Shop Merchant Guidelines are listed automatically — custom domain connected, custom store name, Online Store channel active, not password-protected. Selling history, order volume, and review quality gate how products get *recommended*, and only approved product categories display.
- **One catalog, many surfaces:** the same product content renders on the store, the Shop app, and any connected channels (Google & YouTube, socials) — a content fix propagates, and so does a content defect.

## Ranking and content-quality mechanics

- On the merchant's own store, search is Google (covered in dtc-site.md). On the **Shop app**, discovery is search + recommendation inside the app, weighted by store performance signals (order history, reviews, shipping reliability) on top of content.
- Shop shows shipping speed and Shop Pay availability prominently; slow or vague fulfillment reads worse there than on the merchant's own site.
- Product taxonomy/category assignment feeds Shop and Google surfaces — a miscategorized product disappears from filtered discovery exactly like a missing attribute on Walmart.

## Expert practice (beyond the docs)

- Square (1:1) product images at 2000px+ survive every surface Shopify syndicates to; mixed aspect ratios break grids in the Shop app and collection pages.
- Write the product title for the syndicated surfaces, where it renders without the surrounding brand context the store provides: brand + product + variant beats the cute in-store-only name.
- Fill product metafields/specs the theme displays and the channels read — Shopify's flexibility means nothing enforces completeness; the merchant has to.
- Reviews via an app (with schema markup) do double duty: on-store trust and rich results in Google.

## Walk checks specific to Shopify

- Walk the store per dtc-site.md, then **open the same product in the Shop app** (search the brand there): is the store listed? Does the product appear, with which images, price, and delivery promise? Merchants routinely don't know what their Shop listing looks like.
- Cross-surface consistency: store PDP vs. Shop app card vs. any Google Shopping result — one catalog should tell one story.
- Shop Pay presence at checkout (conversion driver and Shop-surface trust signal).
- Theme-inflicted defects: image crops, buried specs, variant pickers that hide inventory — platform flexibility means the walk checks the theme's rendering, never assumes it.

## Mode-2 fetchability (observed 2026-07-26)

Merchant storefronts are generally fetchable (theme-dependent; product `.json` endpoints often work but may rate-limit — a 429 means slow down, never guess). The Shop app surface was untested in fetch mode as of this date; treat it as unverified and say so if walked this way.

## Sources (official)

- [Product media](https://help.shopify.com/en/manual/products/product-media) — Shopify Help Center. Canonical via index, 2026-07-26.
- [Product media types](https://help.shopify.com/en/manual/products/product-media/product-media-types) — Shopify Help Center. Canonical via index, 2026-07-26.
- [Shop merchant guidelines (eligibility)](https://help.shopify.com/en/manual/online-sales-channels/shop/eligibility) — Shopify Help Center. Canonical via index, 2026-07-26.
- [Requirements for displaying your store in Shop](https://help.shopify.com/en/manual/online-sales-channels/shop/eligibility/requirements) — Shopify Help Center. Canonical via index, 2026-07-26.
