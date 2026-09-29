# Split Inverse Showcase

## Core

### Identity

A horizontally split primary zone — one half inverse-filled with typography, the other half neutral-filled with a product interface representation — creates the compositional opening tension. The split is not decorative but structural: each half carries distinct content responsibility (messaging vs. demonstration). Remove the split and the composition becomes a generic centered page. The defining gesture is a hard horizontal bisection of the primary zone between inverse text and neutral product interface.

### Layout

The primary zone splits horizontally into two equal halves. The leading half uses an inverse surface with a large headline, supporting text, and a primary action element. The trailing half uses a neutral surface housing a dense product interface representation. A thin utility bar sits above the split. Below, a trust strip presents a horizontal row of monochromatic marks. A feature zone follows with containers arranged in a 4-column, 2-row grid. Each container holds an icon, a title, a description, and an action link.

Density is moderate. The inverse half is focused (headline, subtext, button). The product representation is dense with data visualizations. The feature grid is airy with generous padding per container.

Content in the inverse half floats inward with moderate margins. The product representation extends to the edge of its half. Feature containers sit within the central column with 24px gutters. The utility bar spans the full width.

The hard inverse/neutral split is the primary separation in the primary zone. Whitespace and subtle background tints separate feature containers. No prominent horizontal rules.

### Token Map

**Color**
`surface.inverse` fills the leading half of the primary zone. `surface.primary` fills the trailing half and all zones below. `surface.secondary` fills feature containers. `surface.tertiary` fills the utility bar. `foreground.inverse` carries text on the inverse surface. `foreground.primary` carries headlines on the neutral surface. `foreground.secondary` handles body text. `accent.primary` fills the primary action element and key highlights within the product representation. `border.subtle` provides faint container edges in the feature grid.

**Shape**
`rounded.full` on the primary action element — pill-shaped. `rounded.lg` on feature containers and the product representation frame. `rounded.md` on nested elements within the product representation.

**Elevation**
`shadow.sm` on feature containers — subtle ambient lift.

### Decoration Role

No decorative imagery. The product interface representation is structural content, not decoration.

## Hierarchy

Three scale levels. Primary heading at ~4x body in the inverse zone. Section headings at ~2.5x body. Card titles at ~1.1x body. Body text at baseline.

The inverse half of the primary zone dominates through surface contrast and headline scale. The product representation balances it through visual density. Feature containers operate at a uniform lower level.

## Typography

The Headings category drives all primary and section headings with bold to extra-bold weight and slightly tight tracking. The Body category handles descriptive text at regular weight. The Captions category carries labels, metadata, and action links at small scale. All categories use the same geometric sans-serif face.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `surface.secondary`, `surface.tertiary`, `surface.inverse`, `foreground.primary`, `foreground.secondary`, `foreground.inverse`, `border.subtle`, `accent.primary`
- Radius tokens: `rounded.md`, `rounded.lg`, `rounded.full`
- Shadow tokens: `shadow.sm`

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Split Inverse Showcase - Warm Parchment | Inter | Geist | Funnel Sans |  | Warm Parchment | Soft Lift | none |
| Split Inverse Showcase - Tangerine Orbit | Funnel Sans | Inter | Geist |  | Tangerine Orbit | Gentle Lift | none |
