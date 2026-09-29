# Editorial Landscape Stack

## Core

### Identity

A large-format landscape photograph anchors the composition between typographic zones — the photograph carries spatial and atmospheric weight equal to the text. Serif headlines with selective italic emphasis and monospace technical labels create a three-voice typographic system. Remove the photograph and the composition loses its visual center; remove the typographic variety and the page becomes generically single-voiced. The defining gesture is the interplay between editorial typography, technical labeling, and landscape imagery.

### Layout

Vertically stacked zones within a centered container with generous lateral margins (~120-150px). The primary content zone centers a large serif headline with selective italic words, supporting text, and a pair of action elements. Below, a large landscape photograph spans the full container width with a small interactive element floating at its center. A feature zone follows with three equal containers in a horizontal row, separated by thin hairline dividers. A data strip at the bottom presents items in a horizontal row separated by vertical dividers.

Density is sparse. The primary zone is very open. The photograph occupies significant vertical space. Feature and data zones are structured but maintain generous internal spacing.

Content floats inward with generous margins. The photograph spans the container width. Feature and data containers are defined by hairline dividers rather than background fills.

Whitespace and hairline dividers separate zones and items. No background color alternation between zones.

### Token Map

**Color**
`surface.primary` fills the entire composition ground. `surface.secondary` provides subtle tinting for feature containers. `foreground.primary` carries all headlines and monospace labels. `foreground.secondary` handles body text. `accent.primary` fills the primary action element. `accent.secondary` provides accent color on the floating interactive element's border. `border.subtle` provides all hairline dividers.

**Shape**
`rounded.sm` on action elements and the floating interactive element. `rounded.none` on feature containers, data strip items, and structural layout containers.

**Elevation**
No elevation used. All elements sit flat. The floating interactive element on the photograph is positioned through layering, not shadow.

### Decoration Role

Landscape photography serves as a structural zone — a single large-format, wide-angle natural scene fills the full container width between typographic zones. No other decorative elements.

## Hierarchy

Three distinct scale levels. Primary serif heading at ~4x body. Monospace feature labels at ~0.9x body — deliberately smaller than body. Statistical numbers at ~1.5x body. Body text at baseline.

The primary zone dominates through serif headline scale. The photograph carries weight through size and visual density. Feature and data zones operate at a restrained level.

## Typography

The Headings category uses a high-contrast serif face with selective italic emphasis — creating editorial sophistication. The Body category uses a geometric sans-serif at regular weight. The Captions category uses a monospace face at regular weight for technical labels — sized smaller than body, establishing a "code" voice. The Data category displays metric numbers in sans-serif at medium weight. Three distinct typographic voices (serif, sans, mono) provide hierarchy beyond scale alone.

## Parameters this archetype consumes

- Font roles: headings, body, captions, data
- Color tokens: `surface.primary`, `surface.secondary`, `foreground.primary`, `foreground.secondary`, `border.subtle`, `accent.primary`, `accent.secondary`
- Radius tokens: `rounded.none`, `rounded.sm`
- Shadow tokens: none
- Decorative imagery options: Landscape Photography (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Editorial Landscape Stack - Alpine Terracotta | Newsreader | Inter | IBM Plex Mono | Geist | Alpine Terracotta | undefined | Landscape Photography |
| Editorial Landscape Stack - Heritage Warmth | Playfair Display | Geist | Geist Mono | Inter | Heritage Warmth | undefined | Landscape Photography |
