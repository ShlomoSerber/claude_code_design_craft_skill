# Aerial Gravitas

## Core

### Identity

Full-bleed photography functions as structural zone definition — not accent but load-bearing surface that alternates with typographic slabs to create the composition's rhythm. Remove the photographic slabs and the alternating cadence collapses into a single-surface column. Every photographic block carries a tonal overlay that unifies imagery and content into one continuous material plane.

### Layout

Stacked full-width horizontal slabs with hard cuts between them — no gradual transitions, no overlapping zones. Within each slab, content follows an asymmetric split: primary text anchors to the leading edge at large scale, supporting text and the primary action element cluster at the trailing edge. One zone uses a full-width two-column extreme split — index markers flush to the leading edge, item names flush to the trailing edge — creating a stretched ledger-like reading axis. A single floating container overlaps the boundary between the final photographic slab and its edge, creating the only instance of layered depth.

Density is moderate to sparse. Each slab contains a small number of elements — a headline, one or two lines of supporting text, a single action element — surrounded by generous vertical space. The indexed list zone is the densest area, but line spacing between entries keeps it open. Photographic slabs bleed edge-to-edge with zero margin, occupying the full container width. Typography in content slabs floats inward with generous horizontal margins, never touching the container edge. The floating container is inset from the trailing edge, sitting visually inside the photographic zone. Small elements — labeling markers, action elements — sit inset and never approach edges.

Hard surface-color cuts between full-width slabs are the primary separation mechanism. A single hairline rule separates the opening photographic slab from the typographic slab below it. No shadows on layout slabs; the floating container uses elevation as the sole depth instance. Within the indexed list, whitespace alone separates entries — no rules, no dividers.

### Token Map

**Color**
`surface.primary` fills all typographic-led slabs. `surface.inverse` fills all photographic-led slabs via tonal overlay — these two surfaces alternate to create a light-dark-light cadence across the composition. `accent.primary` appears sparingly: index markers in the list zone, dot indicators on labeling elements, and action element fills only — at most 4-5 instances per view. `accent.secondary` and `accent.tertiary` appear once each as part of a small row of color-blocked rectangles at a single slab transition. `border.subtle` is used once as a hairline rule between the opening photographic slab and the following typographic slab.

**Shape**
`rounded.sm` on all action elements — small enough to read as nearly square-cornered, signaling precision. `rounded.none` on all slab containers, photographic blocks, and the floating container. No pill shapes anywhere; the composition depends on angular containment.

**Elevation**
`shadow.md` on the single floating container only — creating the sole instance of layered depth. All other elements sit flat on their slab surface.

### Decoration Role

Full-bleed aerial and landscape photography is the primary decorative layer, carrying section identity and defining structural zones. Thin geometric construction lines — straight ruled grids overlaid on the photographic surface at low opacity — evoke precision positioning and reinforce the compositional grid. A single row of small color-block rectangles at one slab transition is the only abstract decorative element; it appears once and is never repeated.

## Hierarchy

Three distinct scale levels. Primary headings at ~5-6x body text create strong dominance within their slab. Indexed list items sit at ~2-3x body text, forming a clear mid-tier. Body text and labeling elements operate at the baseline level.

Within a slab, hierarchy is steep — one element clearly commands attention. Across slabs, hierarchy is moderate — the alternating surface treatment gives each slab equal structural weight, with the opening slab carrying the strongest typographic dominance.

## Typography

The Headings category drives all primary statements at high scale with relaxed, natural line-height — titles read as composed statements, not compressed blocks. The Body category handles descriptive text and navigational links at normal weight and natural spacing. The Captions category carries short labeling phrases with uppercase treatment and wide letter-spacing, paired with a small dot indicator to mark section identity before the headline. The Data category drives oversized index numbers in the counted-list zone, paired with large heading-weight item names to establish a numbered-list rhythm.

## Parameters this archetype consumes

- Font roles: headings, body, captions, data
- Color tokens: `surface.primary`, `surface.inverse`, `foreground.primary`, `foreground.secondary`, `foreground.inverse`, `border.subtle`, `accent.primary`, `accent.secondary`, `accent.tertiary`
- Radius tokens: `rounded.none`, `rounded.sm`
- Shadow tokens: `shadow.md`
- Decorative imagery options: Aerial Photography | Landscape Photography | Cartographic Grid Overlay (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Aerial Gravitas - Carbon Frost | Funnel Sans | Geist | Newsreader | Geist Mono | Carbon Frost | Gentle Lift | Aerial Photography |
| Aerial Gravitas - Warm Concrete | Anton | Inter | Geist | IBM Plex Mono | Warm Concrete | Sharp Depth | Cartographic Grid Overlay |
