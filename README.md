# Walk the Store

A free Claude skill that audits your digital storefront the way retail leaders audit physical stores: by shopping it.

## The idea

Physical retail has a practice called walking the store. A leader comes in through the front door like a customer, follows the signage, picks up products, stands in line, and writes down everything that made buying harder. I ran the digital version of this play for years — site merchandising and storefront management at Amazon, mobile game distribution across every North American storefront before that. The mechanics translate directly.

The problem it solves: product owners are often too close to their own product. You know where everything is. You wrote the copy and you can't unread it. The fastest way out of your own head is to become someone else — a specific, qualified customer with a reason to be shopping today — and walk every path they'd walk.

That's what the skill does. It builds the persona first (an SMB owner in January shopping for tax software and a parent buying back-to-school clothes in August walk very different paths), then shops each channel where buyers actually meet you: Google results, your homepage, your pricing page, the Amazon search grid, the App Store listing. It shops in two modes — lean back (skimming on the couch, three seconds per screen) and lean forward (comparison shopping, doing the price math, reading your worst review). Then it writes up what it found.

## What you get

A walk report: sales, marketing, copy, and merchandising findings, ordered by impact, each one sized so you know if it's an afternoon or a sprint. A sample finding:

> **2. Shipping cost first appears at the payment step** — sales
> - Saw: $8.95 shipping surfaces only after entering email and address; the product page and cart never mention it
> - Matters: this buyer did their budget math on the product page, and a surprise cost at the last step is the classic abandonment trigger
> - Fix: state the shipping policy on the product page and in the cart
> - Effort: hours

Verbatim first impressions stay in the report ("I can't find the price"), because that's the evidence. Each report ends with a measurement plan: a baseline captured during the walk (search rank, review counts, before screenshots), the metric each fix should move and where to read it, and a walk tag to drop into your analytics as an annotation so before and after line up with what shipped. The report also schedules its own re-walk, 60–90 days out.

## Install

**Claude.ai:** download this repo as a ZIP, then Settings → Capabilities → Skills → Upload skill, and select the `walk-the-store` folder (zipped).

**Claude Code (recommended — updates arrive on their own):**

```
/plugin marketplace add jeremyperonto/claude-plugins
/plugin install walk-the-store@marketplace-skills
```

Enable auto-updates for the marketplace in `/plugin` → Marketplaces; releases ship on version bumps only.

**Claude Code (plain clone, manual updates via `git pull`):**

```bash
git clone https://github.com/jeremyperonto/walk-the-store.git
ln -s "$(pwd)/walk-the-store/walk-the-store" ~/.claude/skills/walk-the-store
```

## Run a walk

Give Claude a browser if you can — Claude in Chrome, or Claude Code with browser tools. The skill walks your store live, screenshots included. Without a browser it falls back to fetching pages, or asks you for specific screenshots.

Example prompts:

- "Walk the store for mysite.com. The buyer is a boutique owner evaluating a $300/mo tool."
- "Walk my Amazon listing [URL]. Compare it against page 1 for the search term 'pour over kettle'."
- "Walk the App Store listing for [app] as a parent shopping for a kids' reading app."

Tips for better walks:

- Name the buyer if you know them; the skill builds the persona either way, but you know things it doesn't.
- Let it walk channels you didn't ask about. The gap between your site and your listing is usually a top finding.
- Run it before a launch, after a redesign, and any time you catch yourself saying "users just don't get it."

## Feature requests and bugs

Open an issue — I read all of them. If a walk produced something sharp, or something dumb, I want the excerpt either way. Good example walks may end up in the examples library (with your permission).

## Roadmap

- Deeper per-marketplace playbooks: Walmart, Target, TikTok Shop, Etsy, the Shopify App Store itself
- A public library of strong merchandising examples, annotated
- A browser extension for one-click walks

## Who made this

I'm Jeremy Peronto. Fifteen years building and operating marketplaces: site merchandising and storefronts at Amazon early on, then Amazon's Delivery Service Partner network from zero to the second-largest US last-mile carrier, revenue operations at Tomo, and TikTok Shop's first-party logistics network from zero to 1M daily units. Walking the store is the habit that survived every one of those jobs.

I also do this work directly — storefront teardowns, GTM, and sales systems for early-stage teams. If you want a walk with a human behind it: [jeremyperonto.com](https://jeremyperonto.com) · [LinkedIn](https://linkedin.com/in/jeremyperonto).

MIT licensed.
