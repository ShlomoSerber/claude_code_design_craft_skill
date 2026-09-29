# Product Data Grid

## Core

### Identity

Large-scale product photography on an inverse surface serves as the primary zone anchor — the product is lit and arranged as a composed still life rather than a casual shot. Below, a full-bleed accent-colored data grid displays metrics in a specialized display typeface. Remove the product photography and the primary zone becomes a dark text block; remove the accent data grid and the composition loses its statistical impact. The defining gesture is product-still-life-on-dark paired with an accent-colored data surface using display typography.

### Layout

Vertically stacked full-width zones with hard cuts between them. The primary zone uses an inverse surface with left-anchored typography and a large product photograph centered/right-weighted — the product arrangement fills significant vertical space. A social proof strip follows with items in a horizontal row separated by thin hairline dividers. A narrative zone uses a neutral surface with centered typography. An impact zone uses a full-bleed accent surface containing a 4-column grid (title column + three data columns) separated by hairline dividers.

Density is moderate. The primary zone balances sparse text with dense photography. The social proof and data zones are structured and grid-based. Consistent 80-100px vertical spacing between zones.

Content is contained with moderate margins (~80-100px). The inverse zone, social proof strip, and accent zone bleed full-width. Hairline dividers define grid items.

Hard surface-color cuts between zones. Hairline dividers within the social proof strip and data grid. No soft transitions.

### Token Map

**Color**
`surface.inverse` fills the primary zone. `surface.primary` fills the narrative zone. `accent.primary` fills the impact data zone as a full-bleed surface. `foreground.inverse` carries text on the inverse zone. `foreground.primary` carries text on the neutral zone and on the accent surface. `foreground.secondary` handles body text. `border.primary` provides hairline dividers in the social proof and data grids — darker and more visible than subtle borders.

**Shape**
`rounded.none` on all containers, grid items, and action elements — sharp corners throughout for a clinical/utilitarian appearance.

**Elevation**
No elevation used. Product photography uses naturalistic lighting and shadow rather than UI shadow tokens.

### Decoration Role

Product still-life photography on an inverse surface — multiple objects arranged in a balanced, sculptural composition with controlled studio lighting. A small circular portrait photograph appears in the social proof strip.

## Hierarchy

Three scale levels. Primary heading at ~4x body. Narrative heading at ~2.5x body. Statistical display numbers at ~3x body in a specialized display typeface. Body text at baseline.

The inverse primary zone dominates through surface contrast and photographic density. The accent data zone creates a secondary focal area through surface color and large display numbers.

## Typography

The Headings category drives primary and section headings with medium to bold weight and standard tracking. The Body category handles descriptive text at regular weight. The Data category uses a specialized display typeface (pixelated/digital-display style) at large scale for statistical numbers — creating a distinct voice from the primary sans-serif. The Captions category carries small labels and metadata.

## Parameters this archetype consumes

- Font roles: headings, body, captions, data
- Color tokens: `surface.primary`, `surface.inverse`, `foreground.primary`, `foreground.secondary`, `foreground.inverse`, `border.primary`, `accent.primary`
- Radius tokens: `rounded.none`
- Shadow tokens: none
- Decorative imagery options: Product Still Photography (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Product Data Grid - Amber Night | Inter | Geist | Funnel Sans | IBM Plex Mono | Amber Night | undefined | Product Still Photography |
| Product Data Grid - Warm Concrete | Funnel Sans | Inter | Geist | Geist Mono | Warm Concrete | undefined | Product Still Photography |
