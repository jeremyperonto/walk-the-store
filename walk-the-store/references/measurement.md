# Demonstrating Change

A walk produces fixes; this playbook makes the fixes provable. Two layers: an external baseline the skill captures during the walk (no analytics access required), and an internal measurement plan the owner runs in their own tools, keyed to a single walk tag so before and after line up with what actually shipped.

## Contents
- The walk tag
- The external baseline (captured during the walk)
- Internal metrics, per platform
- Reading the results honestly
- The re-walk

## The walk tag

One tag per walk: `wts-YYYY-MM-DD` (e.g., `wts-2026-07-24`). Individual fixes shipped separately get a suffix from the report's finding number: `wts-2026-07-24-f3`.

The tag is a marker the owner plants everywhere a change is recorded, so any later question of "what moved this metric" has an answer:

- **Analytics annotation.** In GA4, add an annotation on each ship date with the tag and the finding numbers shipped. Tools without annotations get the change log below instead.
- **Experiment names.** Any fix that becomes a test carries the tag as the experiment name: Amazon Manage Your Experiments, App Store Connect product page optimization, Google Play store listing experiments, or a site A/B tool.
- **Campaign parameters.** Only for new links a fix creates (a listing linking to a demo, a video linking to the site): `utm_campaign=wts-2026-07-24`. The tag never goes on existing links — that would pollute the very trends being read.
- **The change log.** A dated list — tag, finding number, what shipped, where — kept anywhere durable (a doc, the repo, a spreadsheet). On platforms with no annotations (Shopify native analytics, Amazon Seller Central), this list is the annotation layer.
- **Commits and theme versions**, where the fix is code or a theme edit.

## The external baseline (captured during the walk)

These are visible from outside, so the skill records them in the report at walk time. They are the free half of measurement and the entire measurement story when the owner's analytics are thin:

- Search rank for each persona phrase, per channel (marketplace search, Google, app store search)
- Review count and average rating, per channel
- Price shown, and the page-1 or grid price band around it
- Content-state counts: images, screenshots, video present or absent, A+ present or absent
- Before screenshots of every surface walked (live-browser mode)

Re-capture the same list on the re-walk; the deltas are demonstrable without touching anyone's dashboard.

## Internal metrics, per platform

Match the metric to where the fix sits in the funnel — a detail-page fix is read at detail-page conversion, never at total revenue. Where to read, by surface:

- **DTC / e-commerce site.** Sessions, conversion rate, add-to-cart rate, checkout completion (Shopify Analytics or GA4 funnel). Pricing or shipping-disclosure fixes: watch checkout abandonment specifically.
- **SaaS site.** Pricing-page views, demo bookings or signups per session. A published-pricing fix should move demo *quality* too — worth one line in the change log when sales feels it.
- **Amazon.** Business Reports: sessions and unit session percentage per ASIN, weekly. Search rank tracked manually or via tool. Title, image, and A+ fixes go through Manage Your Experiments when the listing qualifies — a real split test, the strongest read available.
- **App stores.** App Store Connect: impressions → product page views → conversion rate. Google Play Console: store listing conversion. Listing fixes belong in native listing experiments where eligible.
- **eBay.** Seller Hub → Performance → Traffic: impressions, page views, conversion per listing, weekly.
- **Etsy.** Shop Manager → Stats (visits, conversion) and Marketing → Search Analytics (impressions/rank per phrase).
- **Walmart.** Seller Center Listing Quality dashboard (content & discoverability, offer, ratings) plus item-level sales.
- **TikTok Shop.** Seller Center listing quality tier and affiliate dashboard (tagged creator videos, sold count).
- **Where a fix is an embedded element** (a widget, a script, an on-site tool): a traffic split with a holdout is the gold standard read, if the platform supports it and volume allows.

## Reading the results honestly

An incremental result is one that would have happened only because of the change. Rules that keep the read honest:

- Compare equal-length windows before and after the ship date, and match them for seasonality where the category swings.
- Exclude polluted windows: promos, press, holidays, a viral post. Note exclusions in the change log.
- Ship one lever per surface when possible. Five fixes on one page in one week proves the walk worked; it proves nothing about which fix to repeat elsewhere.
- Low traffic means longer windows. Count weeks; on thin traffic, count months, or lean on the experiment tools instead of pre/post.
- If the metric moved but a confound shipped in the same window, say so. A directional read labeled honestly beats a clean-looking number that cannot be defended.

## The re-walk

Schedule it in the report: 60–90 days out, same persona, same channels, same passes. Re-capture the external baseline, put the after screenshots beside the before screenshots, and note which findings shipped (from the change log) and which reactions no longer occur. The re-walk is the qualitative proof that pairs with the metrics, and it works even for owners who never opened their analytics.
