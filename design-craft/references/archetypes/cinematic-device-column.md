# Cinematic Device Column

## Core

### Identity

A floating device interface representation sits at the intersection of a full-bleed photographic landscape and a structured columnar reading zone — bridging immersive imagery and structured content. The columns below use extreme typographic weight contrast (full-weight headlines vs. near-invisible "ghostly" text) to create a layered reading experience. Remove the landscape and the device loses its dramatic context; remove the columnar ghost text and the composition loses its narrative rhythm. The defining gesture is device-over-landscape bridging into weight-contrasted columnar text.

### Layout

Two macro-zones. The primary zone is a full-bleed landscape photograph with centered typography and a floating device interface representation centered within or overlapping the photograph's lower edge. A soft gradient fade bridges the photograph into the secondary zone. The secondary zone divides the container into three equal vertical columns separated by thin hairline vertical dividers. The outer columns contain large-scale text at very low contrast (near-invisible against the background). The central column contains a recurring device interface representation.

Density is sparse. The primary zone contains minimal text with a single device. The columnar zone contains only large text and one device, with generous vertical space.

The photograph bleeds full-width. The columnar zone spans the full viewport width, with columns separated by vertical hairline dividers.

The gradient fade between photograph and columnar zone is the primary transition. Vertical hairline dividers separate columns. No horizontal rules.

### Token Map

**Color**
`surface.primary` fills the columnar zone ground. `foreground.primary` carries the primary headline and device labels. `foreground.muted` carries the "ghostly" large-scale column text — deliberately low contrast against the ground, creating a watermark-like reading experience. `foreground.inverse` carries text on the photographic zone. `accent.primary` provides interactive element fills and key data highlights within the device interface. `border.subtle` provides vertical hairline column dividers.

**Shape**
`rounded.xl` on device interface representations — large rounding to mimic physical device frames. `rounded.sm` on action elements.

**Elevation**
`shadow.lg` on the device interface representation — a large-spread ambient shadow creating a floating effect over the photograph.

### Decoration Role

Full-bleed landscape photography serves as the primary zone ground — a natural scene that fades to mist at the bottom edge via a gradient overlay. No other decorative elements.

## Hierarchy

Two scale levels in the primary zone: headline at ~4x body. In the columnar zone, the ghostly text operates at ~2.5x body but is visually recessive due to extreme contrast reduction. The device interface carries weight through detail density rather than typographic scale.

The photographic primary zone dominates through immersive surface treatment. The columnar zone is deliberately subdued, creating a quiet reading rhythm.

## Typography

The Headings category drives the primary headline with medium to bold weight. The Body category handles supporting text at regular weight. A unique typographic device: large-scale text rendered at very low contrast (`foreground.muted` on `surface.primary`) creates a "watermark" or "ghost" reading layer — visually present but recessive.

## Parameters this archetype consumes

- Font roles: headings, body
- Color tokens: `surface.primary`, `foreground.primary`, `foreground.muted`, `foreground.inverse`, `border.subtle`, `accent.primary`
- Radius tokens: `rounded.sm`, `rounded.xl`
- Shadow tokens: `shadow.lg`
- Decorative imagery options: Atmospheric Landscape Photography (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Cinematic Device Column - Lavender Mist | Funnel Sans | Geist |  |  | Lavender Mist | Sharp Depth | Atmospheric Landscape Photography |
| Cinematic Device Column - Forest Sage | Inter | Newsreader |  |  | Forest Sage | Soft Cloud | Atmospheric Landscape Photography |
