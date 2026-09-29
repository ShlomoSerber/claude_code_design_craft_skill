# Inline Friendly

## Core

### Identity

A single word within the primary heading is set in a contrasting handwritten script — embedded inside the sentence itself, creating an inline typographic collision between expressive cursive and high-contrast display weight. This disruption humanizes the composition through structural tension between two incompatible typographic registers occupying the same line. Remove it and the design collapses into a generic centered single-column layout.

### Layout

Strictly centered single-column flow. The primary content zone stacks vertically: a small labeling container, then the primary heading, a supporting text block, a primary action element, and a large demonstrative content block. The demonstrative block breaks into a two-panel side-by-side arrangement at equal scale; on narrower formats, panels stack vertically rather than compressing. Below, a centered heading introduces a horizontal row of evenly-sized branded tiles with visible gaps between them.

Density is sparse. The primary content zone contains minimal elements with generous vertical spacing between each. The demonstrative panels are content-rich internally but sit with abundant empty space surrounding them. All content sits within a tight centered max-width container with generous lateral margins — nothing approaches the container edge. The demonstrative panels float centered with visible margin on all sides. The branded tile row extends close to but does not reach the container edge. A small floating thumbnail element crops partially outside its parent boundary — the only edge-breaking gesture, deliberately asymmetric against the otherwise centered composition.

Separation relies on whitespace between all zones. Demonstrative panels use elevation to lift as distinct objects on the ground surface. Branded tiles use subtle border outlines with gap space between them. The navigation zone floats as a pill-shaped contained bar with a subtle border outline rather than spanning the full width — it is itself a contained object. No rules, no color cuts, no background shifts between zones.

### Token Map

**Color**
`surface.primary` is the ground surface across all zones — a single continuous surface with no tonal breaks. `surface.secondary` fills only the small labeling container near the top — the sole non-ground surface element. `accent.primary` appears exactly twice: on the primary action element fill and on a small icon glyph prefixing a feature label. `foreground.muted` handles navigation links, supporting text, and branded tile marks. `border.subtle` outlines the branded tiles and the navigation zone container. No `surface.inverse` anywhere — the composition never introduces a high-contrast background zone.

**Shape**
`rounded.full` dominates: the navigation zone container, the labeling container, the primary action element, and the feature label tag are all pill-shaped. `rounded.xl` on the demonstrative panel containers. `rounded.lg` on the branded tiles. `rounded.md` on elements within the demonstrative panel interiors. No `rounded.none` anywhere — every element is softened.

**Elevation**
`shadow.sm` on the demonstrative panels only — lifting them as distinct objects from the ground surface. No other elements carry elevation.

### Decoration Role

The inline handwritten script word embedded in the heading is the primary decorative element — a structural typographic gesture inseparable from content, functioning as both disruption and humanization. A small sparkle glyph prefixes one feature label. These are typographic devices, not sourced or generated imagery. A floating thumbnail element partially cropping outside its parent panel boundary adds an informal, edge-breaking quality. No photography as standalone decoration, no illustrations, no gradients, no abstract shapes.

## Hierarchy

Two distinct scale levels with an additional style-contrast register. Primary headings at ~5-6x body text create strong dominance in the primary content zone. Secondary headings at ~3-4x body text introduce subsequent zones. Within the primary heading, the handwritten script word operates at roughly the same scale as its surrounding words but reads as a separate register through style contrast alone — a third hierarchy channel that is orthogonal to scale.

Dominance is steep within the primary content zone — the heading clearly commands attention. Across zones, dominance is moderate — each zone has its own focal point without competing aggressively with others.

## Typography

The Headings category carries primary and secondary headings at high-contrast display weight with generous natural line-height — multi-line titles read as considered statements. The inline handwritten script word is a decorative Headings treatment, not a separate font category — an expressive variant applied to one word within the heading sentence. The Body category handles supporting text and demonstrative panel content at comfortable reading weight. The Captions category carries labeling containers, feature labels, navigation links, and panel section labels — small and light, relying on container shape for visual distinction rather than letter-spacing or case transformation.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `surface.secondary`, `foreground.primary`, `foreground.secondary`, `foreground.muted`, `border.subtle`, `accent.primary`
- Radius tokens: `rounded.md`, `rounded.lg`, `rounded.xl`, `rounded.full`
- Shadow tokens: `shadow.sm`

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Inline Friendly - Forest Sage | Playfair Display | Geist | Inter |  | Forest Sage | Soft Lift | none |
| Inline Friendly - Warm Linen | Funnel Sans | Inter | Newsreader |  | Warm Linen | Gentle Lift | none |
