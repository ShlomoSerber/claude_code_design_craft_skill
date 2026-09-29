# Modular Bento Showcase

## Core

### Identity

Dense, high-fidelity product interface representations are embedded within a modular grid of containers with varied surface fills — the grid arrangement and the embedded interfaces together form the compositional argument. Remove the product representations and the containers become empty colored boxes; remove the grid and the representations lose their organizational logic. The defining gesture is interface-density organized by a bento-style container grid with surface-fill variety.

### Layout

Vertically stacked macro-zones. The primary content zone uses a full-bleed inverse surface with centered typography, a video container, and a trust strip. Below, content shifts to a neutral surface. Feature zones use alternating two-column splits (~60/40 or 40/60) with descriptive text on one side and a product representation on the other. A secondary feature strip presents 4-5 small containers in a horizontal row, each icon-led. Below, a modular grid of 2-column containers with varied surface fills (neutral, warm-tinted, cool-tinted) creates a bento-style arrangement, each containing a product representation.

Density is high. The primary zone is moderately dense (headline, subtext, video). Feature zones pack text alongside detailed product representations. The bento grid is the densest area — each container is filled with interface detail.

Content is contained within a central column with moderate margins (~80-100px). The inverse primary zone bleeds full-width. Bento containers sit within the central column with tight gutters (16-24px).

Surface fill alternation (inverse → neutral → tinted containers) provides primary separation. Container edges define bento grid boundaries. No prominent horizontal rules.

### Token Map

**Color**
`surface.inverse` fills the primary content zone. `surface.primary` fills the main content area and some bento containers. `surface.secondary` fills the subtle-tinted bento containers (warm and cool tints). `surface.tertiary` provides additional tinted container fills. `foreground.primary` carries headlines and body text on neutral ground. `foreground.inverse` carries text on the inverse zone. `foreground.secondary` handles body text at reduced emphasis. `accent.primary` fills primary action elements and key interactive links. `border.subtle` provides faint container edges in the bento grid.

**Shape**
`rounded.lg` on bento containers, video player, and product representation frames. `rounded.sm` on action elements and small containers.

**Elevation**
`shadow.sm` on bento containers — subtle ambient lift from the ground surface. All other elements sit flat.

### Decoration Role

Blurred, desaturated photography fills the background of the inverse primary zone — used as atmospheric texture, not focal imagery. The video container is the only photographic element with full fidelity. No other decorative elements.

## Hierarchy

Three scale levels. Primary heading at ~4x body text. Section headings at ~2.5x body. Container headings at ~1.2x body. Product representations carry visual weight through density and size rather than typographic scale.

The inverse primary zone dominates through surface contrast and headline scale. Subsequent zones compete evenly, with the bento grid drawing attention through accumulated density.

## Typography

The Headings category drives all primary and section headings with bold to extra-bold weight and slightly tight tracking. The Body category handles descriptive text at regular weight. The Captions category carries small labels, navigation, and metadata. All categories use the same geometric sans-serif face.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `surface.secondary`, `surface.tertiary`, `surface.inverse`, `foreground.primary`, `foreground.secondary`, `foreground.inverse`, `border.subtle`, `accent.primary`
- Radius tokens: `rounded.sm`, `rounded.lg`
- Shadow tokens: `shadow.sm`
- Decorative imagery options: Cinematic Grain Photography (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Modular Bento Showcase - Onyx Peach | Inter | Geist | Funnel Sans |  | Onyx Peach | Soft Lift | Cinematic Grain Photography |
| Modular Bento Showcase - Carbon Frost | Funnel Sans | Inter | Geist |  | Carbon Frost | Gentle Lift | Cinematic Grain Photography |
