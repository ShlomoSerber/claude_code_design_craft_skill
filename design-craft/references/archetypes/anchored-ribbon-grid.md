# Anchored Ribbon Grid

## Core

### Identity

A massive abstract dimensional graphic sweeps across the primary zone behind left-anchored typography — the graphic is structural, creating the zone's visual energy and spatial depth. Below, feature containers use gradient fills as load-bearing surfaces rather than spot accents. Remove the dimensional graphic and the primary zone becomes a flat text block; remove the gradient container fills and the features lose their visual distinction. The defining gesture is dimensional-graphic-behind-text paired with gradient-filled feature containers.

### Layout

The primary zone anchors typography to the leading edge with a large headline, supporting text (with inline gradient-colored words), and a pair of action elements. A massive abstract dimensional graphic occupies the trailing side and upper portion of the primary zone, bleeding off the trailing and top edges. A trust strip follows with a horizontal row of partner marks. A feature section uses a left-anchored headline and supporting text, followed by a 2-column grid of large feature containers. Each container uses a gradient fill and houses layered product interface representations.

Density is moderate. The primary zone is expansive due to the large graphic. Feature containers are dense with layered UI elements.

Content floats inward with moderate margins (~80-100px). The dimensional graphic bleeds off the trailing and top edges. Feature containers sit within the central column with 24-32px gutters.

Whitespace separates the primary zone from the trust strip and features. The gradient-filled containers provide internal separation from the neutral ground.

### Token Map

**Color**
`surface.primary` fills the main ground. `accent.primary` fills the primary action element and provides the dominant gradient tone in feature containers. `accent.secondary` provides the secondary gradient tone. `accent.tertiary` provides additional gradient and inline text coloring. `foreground.primary` carries all headlines (with selective gradient-fill on emphasis words). `foreground.secondary` handles body text. `border.subtle` is not prominently used.

**Shape**
`rounded.sm` on action elements. `rounded.lg` on feature containers and product representation frames.

**Elevation**
`shadow.sm` on product representations within feature containers — subtle layered depth.

### Decoration Role

A massive abstract dimensional graphic — a multi-colored 3D ribbon or wave form — sweeps across the primary zone. It is always larger than the visible area, bleeding off edges to imply continuation. The graphic uses flowing curves with smooth color transitions across accent tones.

## Hierarchy

Three scale levels. Primary heading at ~4.5x body. Section heading at ~2.5x body. Feature container headings at ~1.5x body. Body text at baseline.

The primary zone dominates through headline scale and the visual mass of the dimensional graphic. Feature containers compete through gradient fill energy and internal detail density.

## Typography

The Headings category drives primary statements with semi-bold to bold weight and slightly tight tracking. Inline gradient-fill on select words provides emphasis without weight change. The Body category handles descriptive text at regular weight. The Captions category carries small labels and metadata. All categories use the same geometric sans-serif face.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `foreground.primary`, `foreground.secondary`, `accent.primary`, `accent.secondary`, `accent.tertiary`
- Radius tokens: `rounded.sm`, `rounded.lg`
- Shadow tokens: `shadow.sm`
- Decorative imagery options: Fluid Ribbon Gradients (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Anchored Ribbon Grid - Lavender Cream | Funnel Sans | Inter | Geist |  | Lavender Cream | Gentle Lift | Fluid Ribbon Gradients |
| Anchored Ribbon Grid - Tangerine Orbit | Inter | Geist | Funnel Sans |  | Tangerine Orbit | Soft Lift | Fluid Ribbon Gradients |
