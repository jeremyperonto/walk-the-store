# Exhibits: Screenshots as Evidence

When a finding is visual, words undersell it. An exhibit is a screenshot captured during the walk — numbered, captioned, and referenced from the report the way evidence is referenced in a case file. Exhibits ship with the report and double as the measurement baseline for the re-walk.

## Contents
- When to capture
- What makes a good exhibit
- Analyzing product images
- Showing gaps
- Conventions

## When to capture (words don't suffice)

- Layout and hierarchy defects: the buy button below the fold, a hero that reads as decoration, a wall of text where the price should be.
- Product-image problems: bad crops, low resolution, infographic text illegible at phone size, mismatched image styles across a grid.
- Grid context: the product's thumbnail beside its actual competitors, at actual size. The single most persuasive exhibit on a marketplace walk.
- Cross-channel inconsistency: the two surfaces telling different stories, captured so they can sit side by side in the report.
- Any moment the persona reacted where an owner would have to see it to believe it.
- The before-baseline: in live-browser mode, every surface walked gets at least one capture for the re-walk comparison, whether or not it produced a finding.

## What makes a good exhibit

- Tight crop on the evidence. Full-viewport grabs are for fold-line and layout findings; element-level findings get element-level captures.
- Match the viewport to the pass: phone width for lean-back findings, desktop for lean-forward detail.
- Capture the state that produced the reaction — filters applied, variant selected, checkout step reached.
- One claim per exhibit. A screenshot asked to prove three findings proves none of them.

## Analyzing product images

When the walk reaches a product's images, treat them as merchandising assets and analyze them directly:

- Main image at grid size, next to the category's real neighbors — does it survive?
- Count and order against the category norm; where the story breaks or repeats.
- Infographic and caption text legibility at phone width.
- Mix of white-background and in-use shots; whether scale and material are readable without words.
- Zoom quality, and consistency across variants.

Capture the grid and the worst single offender as exhibits; describe the rest in the report.

## Showing gaps

For missing-element findings — no buy button above the fold, no price on the page, no reviews block, no video — capture the viewport exactly as the persona saw it, and state in the caption what is absent and where the persona expected it. The empty space is the finding; the caption does the pointing.

## Conventions

- Number in capture order: E1, E2, E3…
- Files: `E01-short-slug.png` in an `exhibits/` folder beside the report.
- **Embed, never just cite.** Each exhibit appears inline in the report at the point where it is first discussed — the image itself, not a code. Use standard markdown (`![E03 — caption](exhibits/<walk-slug>/E03-slug.png)`, path relative to the report file) or, when the report lives in an Obsidian vault, the vault's embed syntax (`![[E03-slug.png]]`). Confirm the destination format during scoping; a report whose images the reader must open from a folder is broken.
- Caption format carries location: what the exhibit shows, the finding it evidences, and where the camera stood — full URL, the element, viewport width. Example: "E8 — cognicard.app/pricing, the Plus card's CTA at 390px: purple bar, no label pixels."
- Later mentions may use the short code ("(E8)") once the image has appeared.
- The report ends with an Exhibits index listing every exhibit and caption, for navigation.
- No doctored images. Annotate in the caption, never in the pixels. If pointing would truly help, name the region ("bottom-right quadrant").
