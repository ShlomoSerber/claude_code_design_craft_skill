# Gradient Prompt Stack

## Core

### Identity

A floating conversational interface anchored against a gradient-filled surface is the singular compositional focal point — an AI prompt element elevated above a warm gradient ground. Remove the gradient surface and the floating interface loses its context; remove the interface and the gradient becomes purposeless decoration. The defining gesture is a single interactive element given compositional authority through surface contrast and elevation.

### Layout

Vertically stacked zones within a centered container with generous lateral margins (~120-150px). The primary content zone centers a headline, supporting text, and a pair of action elements (one filled, one outlined with social icons). Below, a gradient-filled surface block contains a single floating conversational interface element centered within it. A trust strip follows with a horizontal row of monochromatic marks. An impact zone pairs a large-text quote at the leading edge with a grid of three statistical containers at the trailing edge. A feature zone presents four equal containers in a horizontal row, each icon-led.

Density is sparse to moderate. The primary zone is very open. The gradient block contains a single element. The impact and feature zones are more structured but maintain comfortable spacing.

Content floats inward with generous margins. The gradient surface block spans the container width but content within it is centered. Statistical containers have subtle edges.

Whitespace and background color/fill shifts separate zones. A thin horizontal divider separates the trust strip from the impact zone. No other rules.

### Token Map

**Color**
`surface.primary` fills the main ground. `surface.secondary` fills feature containers and statistical containers. `accent.primary` fills the primary action element and the gradient surface block's dominant tone. `accent.secondary` provides the gradient surface block's secondary tone. `foreground.primary` carries headlines. `foreground.secondary` handles body text. `border.subtle` provides faint container edges and a divider.

**Shape**
`rounded.sm` on action elements and input fields. `rounded.lg` on the conversational interface container, feature containers, and statistical containers.

**Elevation**
`shadow.sm` on the conversational interface and statistical containers — subtle ambient lift.

### Decoration Role

No decorative imagery. The gradient surface block is structural, not decorative.

## Hierarchy

Three distinct scale levels. Primary heading at ~4x body. Statistical numbers at ~3x body. Section headings at ~2.5x body. Body text at baseline.

The primary zone dominates through headline scale. The gradient block draws attention through the color contrast. The statistical numbers create secondary focal points through size.

## Typography

The Headings category drives primary statements with semi-bold to bold weight. The Body category handles descriptive text at regular weight. The Data category displays statistical numbers at bold weight. The Captions category carries labels and metadata. All categories use the same geometric sans-serif face.

## Parameters this archetype consumes

- Font roles: headings, body, captions, data
- Color tokens: `surface.primary`, `surface.secondary`, `foreground.primary`, `foreground.secondary`, `border.subtle`, `accent.primary`, `accent.secondary`
- Radius tokens: `rounded.sm`, `rounded.lg`
- Shadow tokens: `shadow.sm`

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Gradient Prompt Stack - Solar Warmth | Funnel Sans | Geist | Inter | IBM Plex Mono | Solar Warmth | Gentle Lift | none |
| Gradient Prompt Stack - Carbon Frost | Inter | Geist | Funnel Sans | Geist Mono | Carbon Frost | Soft Lift | none |
