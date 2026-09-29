# Monumental Editorial

## Core

### Identity

Display typography at architectural scale — letterforms so large they crop against the container edge on both sides simultaneously — is the structural cornerstone. Text becomes a spatial object that exceeds its boundaries, creating the sensation that the composition is larger than its frame. This edge-breaking typographic gesture is non-negotiable; remove it and the design collapses into a conventional editorial layout.

### Layout

Two compositional modes alternate in sequence. The primary content zone is a full-bleed photographic slab with typography layered at multiple vertical positions across it — small labels at the top, body text at center, and a monumental headline anchored to the bottom edge that crops past both sides. Below, the layout shifts to a sparse three-column editorial grid: a short leading-column label, a centered body text block, and a trailing-column link, with a single small photograph placed off-center.

Density is extremely sparse. Between the primary content zone and the editorial grid, full-width headline zones contain nothing but a single monumental headline and void — the entire zone is occupied by one element surrounded by emptiness. The editorial grid leaves the majority of the surface empty. On smaller formats, preserve the emptiness: show one element per zone, never compress multiple zones together.

Large typographic elements bleed past the container boundary on both sides, cropping at the edges with zero margin. Small elements — captions, labels, body text, the small interior photograph — all float inward with generous margins, never touching edges. The contrast between bleeding type and inset small elements creates the sense of scale.

Whitespace alone creates all separation — between zones, between columns, between content clusters. No border strokes, no rules, no color-cut dividers anywhere. No elevation — the design is entirely flat.

### Token Map

**Color**
`surface.primary` covers all non-photographic zones — the dominant ground surface. Photography functions as the textured surface in the primary content zone. All type on photography uses `foreground.inverse`. All type on the ground surface uses `foreground.primary`. `foreground.secondary` handles tertiary labels and navigation marks. No accent colors anywhere — the palette is strictly monochrome.

**Shape**
`rounded.none` on every element without exception — photographs, containers, typographic blocks. No softness of any kind; the structural authority depends on absolute angularity.

**Elevation**
None. No shadows on any element. The design is entirely flat, relying on scale contrast and whitespace for spatial separation.

### Decoration Role

Photography is the sole decorative layer — used full-bleed in the primary content zone and as a single small inset image in the editorial grid. No overlay treatment on photographs. No illustration, no gradients, no abstract marks, no icons. Typography at architectural scale takes decoration's place as the primary visual event.

## Hierarchy

Two-speed hierarchy only — no mid-scale exists. Primary headings at ~8-10x body text operate at monumental scale, functioning as spatial objects rather than conventional text. Body text and captions operate at the baseline level, deliberately small and refined. The extreme scale gulf between the two levels is the sole hierarchy mechanism; weight plays a secondary role.

Within zones, dominance is absolute — one element commands all attention. Across zones, each monumental headline zone competes equally with the primary content zone, maintaining tension through the sequence.

## Typography

The Headings category carries all display text — uppercase, with tight compressed line-height so stacked lines feel like a single monolithic slab rather than separate lines of text. The Body category handles running text in two modes: a mid-size centered quote at slightly elevated weight, and small refined paragraphs in the editorial grid. The Captions category carries all navigation labels, section identifiers, and column labels — small, light-weight, and widely letter-spaced. Hierarchy is built from the extreme size gulf between Headings and everything else; weight is secondary.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `foreground.primary`, `foreground.secondary`, `foreground.inverse`
- Radius tokens: `rounded.none`
- Shadow tokens: none
- Decorative imagery options: Hospitality Interior Photography (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Monumental Editorial - Warm Concrete | Anton | Geist | Inter |  | Warm Concrete | undefined | Hospitality Interior Photography |
| Monumental Editorial - Parchment Gold | Playfair Display | Newsreader | Funnel Sans |  | Parchment Gold | undefined | Hospitality Interior Photography |
