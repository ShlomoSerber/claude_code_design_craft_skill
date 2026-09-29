# Ledgerly landing page — design notes

**Archetype: Split Inverse Showcase · Palette: Warm Parchment · Headings: Inter / Body + captions: Geist / Data: Geist Mono · Elevation: Soft Lift**

## Archetype — Split Inverse Showcase
The product's whole pitch is "look at where your money went." That is a claim best proven by showing the report itself, so the archetype had to put a dense product representation in the hero. Split Inverse Showcase does exactly that: a black half carrying the headline and one CTA, a parchment half carrying the monthly report. The hard bisection gives the page an opening tension that a centered hero would not, and the inverse half reads as serious and financial without any decoration. Below the split I followed the archetype's structure (utility bar, monochrome trust strip, 4x2 feature grid) and added the rhythm the landing-page guide asks for: an airy numbered "how it works" text section, a dark proof block with a pull quote and three stats, then a single-plan pricing section as the final action.

## Palette — Warm Parchment
One of the two curated palettes for this archetype. The `#FCFAF7` ground and `#F5F3EE` utility bar feel like paper and a ledger rather than a SaaS template, and pure black inverse surfaces keep it premium. The single accent is orange `#FF9800`, used only three times on the page: the hero CTA, the "up 23%" drift signal inside the report, and the final pricing CTA. One deliberate deviation from the token rule: `foreground.inverse` (white) on `#FF9800` only reaches ~2.1:1, so the CTA buttons use `foreground.primary` (black) on the accent, which passes at ~9:1. Status green is used once, for the "less than July" arrow.

## Fonts
The archetype wants one geometric sans across headings, body and captions. Inter at 800 for the display headline and 700 for section headings (tight tracking, large size jumps: 64 / 40 / 20 / 17 / 16 / 13 px). Geist for body and captions. I swapped the preset's Funnel Sans captions for Geist to stay inside the "two families plus one mono" rule, and added Geist Mono as the data face because a finance product lives on tabular numbers; it carries every amount in the report, the stats in the proof block, the step numerals and the price.

## Elevation — Soft Lift
The curated preset for this palette. `shadow.sm` on the eight feature containers (as the token map specifies) and `shadow.xl` on the report frame so it lifts off the parchment without a hard drop shadow. Nothing else casts a shadow. Radius follows the token map: pill buttons, `rounded.lg` on the report frame and feature containers, `rounded.sm/md` on nested tags and the brand mark.

## Verification
Rendered with headless Chrome at 1440 px and 390 px. Fixed after the first pass: category bars scaled relative to the largest category (they were too short to read as a chart), and the proof section was re-centered vertically. On mobile the hero stacks, the report bleeds off the right edge by design, and the feature grid collapses to a single column.
