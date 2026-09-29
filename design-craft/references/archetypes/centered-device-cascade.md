# Centered Device Cascade

## Core

### Identity

Multiple overlapping device representations — tilted and layered at different depths — create a cascading focal point that anchors the lower half of the composition. The devices are not arranged side-by-side but stacked with intentional overlap and rotation, creating implied depth and movement. Remove the device cascade and the composition becomes a generic centered text page. The defining gesture is the overlapping, rotated device stack as the primary visual mass.

### Layout

Vertically stacked zones within a centered container with generous lateral margins (~120-150px). The primary content zone centers a large headline and supporting text. A trust strip follows with a horizontal row of monochromatic marks. A feature lead-in zone centers a secondary headline, a single action element, and a horizontal row of four icon-label pairs. Below, the device cascade zone presents two or more large device representations overlapping each other with slight rotation — the back device is upright, the front device tilts forward, creating a perspective depth effect.

Density is sparse in the upper half and visually dense in the device cascade. The top zones contain minimal text elements. The device cascade fills the lower container with detailed interface content.

All content is centered within the container. The device cascade may extend to or beyond the container edges due to rotation and scale.

Whitespace separates all zones. No rules, no dividers, no background color shifts.

### Token Map

**Color**
`surface.primary` fills the entire composition ground. `foreground.primary` carries all headlines. `foreground.secondary` handles body text and icon labels. `accent.primary` fills the primary action element. `border.subtle` is not prominently used — the clean white ground provides all separation.

**Shape**
`rounded.full` on the primary action element — pill-shaped. `rounded.xl` on device representation frames — large rounding to mimic physical device edges. `rounded.sm` on internal UI elements within device representations.

**Elevation**
`shadow.lg` on device representations — large-spread ambient shadows create depth and separation between overlapping devices. This is the primary depth mechanism in the composition.

### Decoration Role

No decorative imagery. Device interface representations are structural content.

## Hierarchy

Two primary scale levels. Primary heading at ~4x body. Secondary heading at ~2.5x body. Feature labels at small scale. Body text at baseline.

The primary heading dominates the upper half. The device cascade dominates the lower half through accumulated visual mass and detail density. The composition has a clear top-bottom weight balance.

## Typography

The Headings category drives primary and secondary headings with medium to semi-bold weight and standard tracking. The Body category handles descriptive text at regular weight. The Captions category carries feature labels and icon descriptions at small scale. All categories use the same geometric sans-serif face.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `foreground.primary`, `foreground.secondary`, `accent.primary`
- Radius tokens: `rounded.sm`, `rounded.xl`, `rounded.full`
- Shadow tokens: `shadow.lg`

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Centered Device Cascade - Minimal Ink | Inter | Geist | Funnel Sans |  | Minimal Ink | Soft Cloud | none |
| Centered Device Cascade - Carbon Frost | Funnel Sans | Inter | Geist |  | Carbon Frost | Gentle Lift | none |
