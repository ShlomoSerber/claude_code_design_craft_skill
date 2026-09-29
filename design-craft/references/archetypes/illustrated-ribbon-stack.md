# Illustrated Ribbon Stack

## Core

### Identity

Large-scale character illustrations and a dimensional ribbon element wrapping around photographic content create the composition's visual energy — the illustrations are load-bearing compositional anchors, not accents. Full-bleed saturated color surfaces alternate with neutral and photographic zones. Remove the illustrations and the colored surfaces become empty blocks; remove the ribbon and the photographic zone loses its framing device. The defining gesture is illustrated-characters-on-saturated-ground paired with a dimensional wrapping element on photography.

### Layout

Vertically stacked full-width surface blocks. The opening zone uses a neutral tinted surface with a multi-character illustrated scene spanning the full width. The primary zone uses a full-bleed saturated surface with a large character illustration overlapping centered typography and a single action element. A small horizontal strip follows with three brief text items. Below, a full-bleed photographic zone features a dimensional ribbon element wrapping around the photographic subjects, carrying text along its surface. A closing zone uses a neutral surface with large left-aligned typography.

Density is sparse in text areas but high in illustrated and photographic zones due to visual complexity. Generous 100-120px side margins for text content. Sections are flush against each other with no gaps.

Full-bleed surface fills and photography are the primary separation. No rules, no dividers between major zones.

### Token Map

**Color**
`accent.primary` fills the primary zone as a full-bleed saturated surface — used structurally. `surface.primary` fills the opening and closing zones. `accent.secondary` fills the dimensional ribbon element. `foreground.primary` carries all headlines on neutral surfaces. `foreground.inverse` carries text on the saturated surface. `foreground.secondary` handles body text.

**Shape**
`rounded.full` on action elements — pill-shaped. `rounded.none` on all structural containers and photographic blocks.

**Elevation**
No traditional elevation. The dimensional ribbon element creates a sense of depth through its 3D rendering, but this is illustrative rather than shadow-based.

### Decoration Role

Large-scale flat-vector character illustrations serve as primary compositional anchors on saturated surfaces — whimsical, exaggerated-proportion figures placed asymmetrically alongside text. A multi-character illustrated scene spans the opening zone as environmental context. Candid lifestyle photography fills one zone as structural content. A dimensional ribbon is a unique decorative/structural hybrid — a 3D-rendered band that loops around photographic subjects while carrying text.

## Hierarchy

Two scale levels. Primary heading at ~4x body. Section headings at ~2.5x body. Body text at baseline. The illustrations and photography carry more visual weight than the typography.

Each surface block commands roughly equal attention through its color and illustrative/photographic density.

## Typography

The Headings category drives primary statements with medium to semi-bold weight and standard tracking. The Body category handles descriptive text at regular weight. All categories use the same geometric sans-serif face. A wavy underline decorative mark appears once as a typographic accent.

## Parameters this archetype consumes

- Font roles: headings, body
- Color tokens: `surface.primary`, `foreground.primary`, `foreground.secondary`, `foreground.inverse`, `accent.primary`, `accent.secondary`
- Radius tokens: `rounded.none`, `rounded.full`
- Shadow tokens: none
- Decorative imagery options: Storybook Character Illustrations | Candid Lifestyle Photography (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Illustrated Ribbon Stack - Spring Meadow | Funnel Sans | Inter |  |  | Spring Meadow | undefined | Storybook Character Illustrations |
| Illustrated Ribbon Stack - Warm Linen | Inter | Geist |  |  | Warm Linen | undefined | Candid Lifestyle Photography |
