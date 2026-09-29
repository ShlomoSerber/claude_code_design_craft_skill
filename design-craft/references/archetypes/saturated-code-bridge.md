# Saturated Code Bridge

## Core

### Identity

A full-bleed saturated surface in the primary zone creates a bold, high-energy opening that transitions sharply to a neutral ground. A large technical content container bridges this surface transition — overlapping both zones — and serves as the primary compositional anchor. Remove the bridging container and the composition splits into two disconnected surface blocks. The defining gesture is the bridging overlap between two strongly contrasted surfaces.

### Layout

Vertically stacked zones. The primary content zone uses a full-bleed saturated fill with centered typography and a pair of action elements. Immediately below, a large technical content container (split into two vertical panels) overlaps the boundary between the saturated zone and the neutral zone below — its top edge sits within the saturated zone and its bottom edge sits on the neutral ground. A section below the container presents centered text with a labeled badge element above the heading. A data strip at the bottom uses a horizontal row of items separated by thin vertical dividers.

Density is moderate. The primary zone is expansive with minimal elements (headline, two lines, two buttons). The technical container is dense with code content. The data strip is information-dense but visually simple.

Content within zones floats inward with generous lateral margins (~120px). The saturated fill bleeds edge-to-edge. The technical container extends wider than the text column above it, creating a scale shift.

The saturated-to-neutral surface cut is the primary separation mechanism, partially obscured by the bridging container. Vertical hairline dividers separate data strip items. Whitespace separates all other zones.

### Token Map

**Color**
`accent.primary` fills the entire primary zone surface as a full-bleed ground — used structurally, not as a spot accent. `surface.primary` fills all zones below the primary. `foreground.inverse` carries text on the saturated zone. `foreground.primary` carries text on the neutral zone. `foreground.secondary` handles body text and data labels. `border.subtle` provides vertical dividers in the data strip. The technical container uses `surface.primary` as its fill, sitting on top of both surface zones.

**Shape**
`rounded.full` on action elements — pill-shaped. `rounded.lg` on the technical content container. `rounded.sm` on badge elements and small icon containers.

**Elevation**
`shadow.md` on the technical content container — providing depth as it bridges two surface zones. All other elements sit flat.

### Decoration Role

Faint, low-opacity pattern illustration covers the saturated primary zone background — geometric and abstract shapes that suggest technical themes without being literal. The pattern is always behind text content and never competes for attention.

## Hierarchy

Three distinct scale levels. The primary heading at ~4x body creates strong dominance. Section headings at ~2.5x body provide mid-tier entry points. Data numbers at ~2x body and body text operate at the lower tiers.

Within the primary zone, the headline dominates. The technical container carries visual weight through density rather than scale. The data strip provides a rhythmic, even-weighted close.

## Typography

The Headings category drives all primary statements with semi-bold to bold weight and tight tracking. The Body category handles descriptive text at regular weight. The Data category displays statistical numbers at bold weight in the data strip. The Captions category carries badge labels and small metadata. All categories use the same geometric sans-serif face.

## Parameters this archetype consumes

- Font roles: headings, body, captions, data
- Color tokens: `surface.primary`, `foreground.primary`, `foreground.secondary`, `foreground.inverse`, `border.subtle`, `accent.primary`
- Radius tokens: `rounded.sm`, `rounded.lg`, `rounded.full`
- Shadow tokens: `shadow.md`
- Decorative imagery options: Pixel Grid Illustration (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Saturated Code Bridge - Electric Cobalt | Funnel Sans | Inter | Geist | Geist Mono | Electric Cobalt | Gentle Lift | Pixel Grid Illustration |
| Saturated Code Bridge - Terminal Green | Inter | Geist | Funnel Sans | IBM Plex Mono | Terminal Green | Soft Lift | Pixel Grid Illustration |
