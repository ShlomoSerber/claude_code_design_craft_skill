# Dark Centered Platform

## Core

### Identity

A large-scale, high-fidelity product interface representation dominates the composition from an inverse-filled primary zone — it is the primary compositional argument, not decoration. All content exists on a continuous dark surface with atmospheric gradient underlays. Remove the product mockup and the composition collapses into generic dark text sections. The defining gesture is interface-as-centerpiece on an immersive dark ground.

### Layout

Vertically stacked zones within a centered container with moderate lateral margins (~100-120px) on a continuous inverse surface. The primary content zone centers a large headline, supporting text, and a pair of action elements (one filled, one outlined). Below the action elements, a large product interface representation spans most of the container width. A trust strip follows with a dense multi-row grid of monochromatic marks. A feature zone presents three equal-width containers in a horizontal row, each containing a small product representation and descriptive text.

Density is balanced — sparse in the primary zone above the mockup (headline, two lines, two buttons) and moderately dense within the product representation and feature cards. Aggressive vertical spacing (~140-160px) between major zones. Tight 24-32px gutters between feature containers.

All content floats inward within the centered container. The inverse surface is continuous and full-bleed — no surface alternation. Feature containers have subtle 1px border edges on the dark ground.

Whitespace and subtle gradient shifts separate zones. Feature containers are delineated by faint border edges rather than background shifts. No horizontal rules.

### Token Map

**Color**
`surface.inverse` fills the entire composition ground — a continuous dark surface. `surface.primary` does not appear as a background — it may appear only within product representations. `foreground.inverse` carries all headlines and primary text. `foreground.muted` handles body text and secondary descriptions at reduced brightness. `accent.primary` fills the primary action element and interactive highlights — used sparingly. `accent.secondary` provides glow/atmospheric gradient underlays. `accent.tertiary` provides a secondary atmospheric tone. `border.subtle` defines faint edges on feature containers.

**Shape**
`rounded.sm` on action elements — small rounding for a technical appearance. `rounded.lg` on product representation frames and feature containers.

**Elevation**
`shadow.lg` as an ambient glow on the product representation — a large-spread luminous effect rather than a traditional shadow. All other elements sit flat.

### Decoration Role

Horizontal blurred streaks of light in accent tones cross the composition at irregular intervals — they are atmospheric texture, not structural dividers. They appear behind content, never competing with text or product representations. A subtle ambient gradient in accent tones underlays the primary content zone behind the headline area.

## Hierarchy

Three distinct scale levels. The primary heading at ~5x body text creates strong dominance. Feature container headings at ~1.5x body provide a restrained third tier. Body text operates at the baseline.

Within the primary zone, hierarchy is steep — the headline dominates decisively. Across zones, the primary zone commands attention through the combination of headline scale and product representation density.

## Typography

The Headings category drives all primary statements at high scale with medium-to-semi-bold weight and standard tracking. The Body category handles descriptive text at regular weight with comfortable line-height. The Captions category carries navigation labels and small metadata with slightly wider letter-spacing for a technical quality. No typographic devices beyond scale and weight.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.inverse`, `foreground.inverse`, `foreground.muted`, `border.subtle`, `accent.primary`, `accent.secondary`, `accent.tertiary`
- Radius tokens: `rounded.sm`, `rounded.lg`
- Shadow tokens: `shadow.lg`
- Decorative imagery options: Neon Streak Overlay (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Dark Centered Platform - Violet Void | Inter | Geist | Funnel Sans |  | Violet Void | Sharp Depth | Neon Streak Overlay |
| Dark Centered Platform - Deep Space Neon | Funnel Sans | Inter | Geist |  | Deep Space Neon | Soft Cloud | Neon Streak Overlay |
