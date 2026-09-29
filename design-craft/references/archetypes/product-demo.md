# Product Demo

## Core

### Identity

A full-scale product interface representation — dense, realistic, and visually complex — is the compositional centerpiece, with all surrounding content serving a supporting or contextual role. The product representation is the primary argument; typography exists to label it, not to lead. Remove the product representation and the design loses its structural reason for existing.

### Layout

Single-column, centered, vertically stacked zones with a narrow content container and generous lateral margins. The product representation zone breaks slightly wider than the text column, creating a scale shift that anchors visual weight. One showcase zone uses an inverse-filled rounded block inset from the container edges as a self-contained panel. A data zone at the bottom uses a four-column equal-width grid. Weight is consistently centered — no leading or trailing gravitational pull.

Density is sparse in text zones and intentionally dense inside product representation zones. Text zones contain a small number of elements with generous breathing room. Product representation zones pack rows, columns, and data to communicate complexity and maturity. Between zones, substantial vertical space provides clear separation.

All content floats inward within a centered max-width container with consistent lateral margins. The product representation and the showcase panel extend slightly beyond the text column width but never reach the container edge. The showcase panel sits as a contained island with clear margin on all sides — nothing bleeds. A single narrow announcement strip at the top is the only flush element. Small elements (action elements, badges, labels) are inset with comfortable padding.

Separation relies on whitespace alone — no horizontal rules, no border strokes between content zones. The inverse showcase panel reads as a distinct zone through fill contrast alone, not through borders. The product representation uses elevation to lift clearly off the ground surface. Internal table structures use hairline rules between rows and columns.

### Token Map

**Color**
`surface.primary` is the ground surface throughout — no fill shifts between text zones. `surface.inverse` is used exclusively for the showcase panel — one zone of high contrast on an otherwise uniform ground. `accent.primary` appears on the primary action element and as a focal glow within the showcase panel — used sparingly, at most 2-3 times per view. `accent.secondary` pairs with `accent.primary` in a single gradient instance on the announcement strip. `foreground.muted` handles trust marks, caption labels, and secondary icon states. `border.subtle` provides hairline rules inside the product representation's data table.

**Shape**
`rounded.lg` on action elements, badge chips, and small interactive elements within the product representation. `rounded.xl` on the product representation container and inner icon containers within the showcase panel. `rounded.3xl` on the showcase panel itself — the largest, most prominent rounded container. `rounded.full` on the primary filled action element and the announcement strip pill. `rounded.none` on data table rows and the navigation zone.

**Elevation**
`shadow.lg` on the product representation container only — lifting it off the ground surface as the single elevated element. All other zones and containers sit flat, relying on fill contrast or whitespace for distinction.

### Decoration Role

A constellation/integration diagram — a centered brand mark surrounded by floating partner marks connected by subtle dotted lines, set against the inverse showcase panel with a radial glow from the center — is the sole decorative set piece. Small emoji-style dimensional 3D icons accompany each data figure. A gradient strip using accent tones serves as a thin decorative band at the top of the composition. All decorative elements are constructed natively within the design rather than sourced as external imagery. No photography, no abstract illustration.

## Hierarchy

Two-speed hierarchy. Primary headings at ~3-4x body text create moderate dominance — prominent but not monumental, as the product representation carries visual authority rather than typography. Data figures at ~4x their caption labels form a strong secondary rhythm. No extreme scale contrast anywhere; the design's weight comes from content density, not typographic scale.

Within containers, hierarchy is clear — one element leads. Across the full composition, hierarchy is moderate — zones compete gently, with the product representation dominating through size and density rather than typographic scale.

## Typography

The Headings category drives primary statements and zone headlines at moderate scale with natural line-height — clear and direct, never compressed or stylized. The Body category handles all descriptive text, table cell contents, and navigation links at normal weight. The Captions category carries eyebrow labels, trust notes, badge text, and data figure labels — rendered in a small register that frames without competing. The Data category drives featured figures at large display scale, each paired with a Captions label beneath.

## Parameters this archetype consumes

- Font roles: headings, body, captions, data
- Color tokens: `surface.primary`, `surface.inverse`, `foreground.primary`, `foreground.secondary`, `foreground.muted`, `foreground.inverse`, `border.subtle`, `accent.primary`, `accent.secondary`
- Radius tokens: `rounded.none`, `rounded.lg`, `rounded.xl`, `rounded.3xl`, `rounded.full`
- Shadow tokens: `shadow.lg`

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Product Demo - Deep Space Neon | Inter | Geist | Funnel Sans | Geist Mono | Deep Space Neon | Sharp Depth | none |
| Product Demo - Tangerine Orbit | Funnel Sans | Inter | Geist | IBM Plex Mono | Tangerine Orbit | Soft Cloud | none |
