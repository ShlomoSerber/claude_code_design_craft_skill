# Color Block Stack

## Core

### Identity

Full-width, solid-color surface blocks alternate in rapid sequence — black, white, orange, yellow — to create a composition driven by surface-color impact rather than typographic or photographic content. Each block carries minimal content (a heading, a few lines, an action element) but derives its compositional authority from the surface fill. Remove the color alternation and the composition collapses into a monotone column. The defining gesture is aggressive surface-color stacking as the primary structural and visual rhythm device.

### Layout

Vertically stacked full-width surface blocks with hard cuts between them. The primary zone uses an inverse surface with centered typography and a large centered graphic container (pill-shaped). A feature zone follows on the same inverse surface with four equal containers in a horizontal row, icon-led. Below, on the primary surface, a vertically stacked list presents large-text items separated by hairline rules. An impact zone uses a full-bleed warm accent surface containing a grid of statistical containers and text blocks. A closing strip uses a full-bleed bright accent surface with centered text and a single action element.

Density is high. Large typography and bold color fills create visual density even with minimal content per block. The stacked list and statistics zones are the most text-dense. Tight vertical spacing between elements within zones.

Content floats inward with moderate margins (~80-100px). All surface blocks bleed full-width. Nothing touches container edges within content areas.

Hard surface-color cuts are the sole separation mechanism. Hairline rules appear only within the stacked list zone. No gradients, no soft transitions.

### Token Map

**Color**
`surface.inverse` fills the primary zone and feature zone. `surface.primary` fills the stacked list zone. `accent.primary` fills the impact zone as a full-bleed surface. `accent.secondary` fills the closing strip as a full-bleed surface. `accent.tertiary` provides secondary accent tones within the graphic container. `foreground.inverse` carries text on inverse and accent-primary surfaces. `foreground.primary` carries text on the primary surface and accent-secondary surface. `foreground.muted` handles secondary text. `border.subtle` provides hairline rules in the stacked list.

**Shape**
`rounded.full` on action elements and the large graphic container — pill-shaped. `rounded.sm` on small internal containers.

**Elevation**
No elevation used. Depth is created solely through surface-color layering.

### Decoration Role

No photography, no gradients, no illustrations as decoration. The colored surface blocks themselves are the decorative system. A large pill-shaped container in the primary zone holds overlapping UI elements as a structural graphic — not decorative imagery.

## Hierarchy

Three scale levels. Primary heading at ~4.5x body. List items and statistical numbers at ~2.5-4x body — large and bold. Body text at baseline. Hierarchy is established through extreme weight and surface-color contrast rather than nuanced scale stepping.

Each surface block commands attention equally through its color impact. The sequence creates rhythm rather than clear dominance of one zone over others.

## Typography

The Headings category drives all primary statements with bold to extra-bold weight and tight tracking — heavy and compact. The Body category handles descriptive text at regular to medium weight. The Data category displays statistical numbers at extra-bold weight at large scale. The Captions category carries small labels. All categories use the same geometric sans-serif face.

## Parameters this archetype consumes

- Font roles: headings, body, captions, data
- Color tokens: `surface.primary`, `surface.inverse`, `foreground.primary`, `foreground.inverse`, `foreground.muted`, `border.subtle`, `accent.primary`, `accent.secondary`, `accent.tertiary`
- Radius tokens: `rounded.sm`, `rounded.full`
- Shadow tokens: none

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Color Block Stack - Bold Tangerine | Anton | Inter | Geist | Geist Mono | Bold Tangerine | undefined | none |
| Color Block Stack - Warm Concrete | Funnel Sans | Geist | Inter | IBM Plex Mono | Warm Concrete | undefined | none |
