# Centered Serif List

## Core

### Identity

A centered, sparse composition where a large-scale serif headline anchors a primary content zone, and content below resolves into a series of vertically stacked single-row items — each a text-leading / accent-trailing pair separated by hairline rules. Remove the serif/sans contrast and the stacked list cadence, and the page becomes a generic centered column. The structural gesture is the tension between a typographically expressive center and a restrained, ledger-like feature list.

### Layout

Vertically stacked zones within a narrow centered container with generous lateral margins (~120-150px). A thin utility bar spans the full container width at the top. The primary content zone is centered with a large headline, supporting text, and a single combined input-action element. A trust strip follows with a multi-row grid of monochromatic marks. Below, a series of single-row items stack vertically — each row places a heading and short description at the leading edge with a small color-accent rectangle at the trailing edge.

Density is very sparse. Each zone contains minimal elements surrounded by generous vertical whitespace. The primary content zone is the most open — one headline, two lines of text, and one action element. The stacked feature rows are denser by comparison but maintain generous vertical spacing between items.

All content floats inward with wide margins. Utility and navigation elements span the container width but keep content inset. Nothing bleeds to the container edge.

Hairline horizontal rules separate stacked list items. Background color shifts separate the utility bar from the primary zone. Whitespace alone separates the primary zone from the trust strip and feature list.

### Token Map

**Color**
`surface.primary` fills the main ground — a warm tinted off-white. `surface.secondary` is not prominently used. `surface.inverse` fills the utility bar only. `foreground.primary` carries all headlines on the primary surface. `foreground.secondary` handles body text and descriptions. `foreground.inverse` carries utility bar text. `accent.primary` fills the primary action element and appears on interactive elements. `accent.secondary` and `accent.tertiary` appear as small trailing color-accent rectangles in the stacked list rows — used sparingly (one per row). `border.subtle` provides hairline horizontal rules between list items.

**Shape**
`rounded.full` on the combined input-action element and standalone action elements — pill-shaped. `rounded.none` on all structural containers, the utility bar, and the small color-accent rectangles.

**Elevation**
No elevation used. All elements sit flat on their surface.

### Decoration Role

Semi-transparent geometric overlays — clusters of translucent colored rectangles — flank the primary content zone at left and right edges. They are decorative accents that suggest analytical/data themes without being literal. They appear only once in the primary zone and are never repeated.

## Hierarchy

Three distinct scale levels. The primary heading in the hero zone at ~4.5x body text creates steep dominance. Section headings in the stacked list at ~2x body provide a clear mid-tier. Body text and navigation operate at the baseline level.

Within zones, hierarchy is clear — one serif heading commands attention. Across the full composition, the primary zone dominates decisively, with the stacked list operating at a uniform lower level.

## Typography

The Headings category uses a high-contrast serif face at display and section scales with medium weight and standard tracking — creating an expressive, editorial quality. The Body category uses a geometric sans-serif at regular weight with natural line-height for all descriptive text, navigation, and UI labels. The Captions category carries small labeling text in the utility bar at reduced scale. Typographic contrast between serif headings and sans-serif body is the primary hierarchy device beyond scale.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `surface.inverse`, `foreground.primary`, `foreground.secondary`, `foreground.inverse`, `border.subtle`, `accent.primary`, `accent.secondary`, `accent.tertiary`
- Radius tokens: `rounded.none`, `rounded.full`
- Shadow tokens: none
- Decorative imagery options: Prismatic Cell Overlay (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Centered Serif List - Prismatic White | Playfair Display | Geist | Inter |  | Prismatic White | undefined | Prismatic Cell Overlay |
| Centered Serif List - Parchment Gold | Newsreader | Inter | Funnel Sans |  | Parchment Gold | undefined | Prismatic Cell Overlay |
