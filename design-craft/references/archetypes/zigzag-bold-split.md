# Zigzag Bold Split

## Core

### Identity

Alternating two-column splits reverse their text/image arrangement in sequence — text-leading/image-trailing, then image-leading/text-trailing — creating a zigzag reading pattern across the composition. Extra-bold, condensed typography at display scale drives the visual energy of each split. Full-bleed accent-colored surface blocks interrupt the zigzag with dense, structured content grids. Remove the alternating splits and the composition loses its reading rhythm; remove the condensed display typography and the visual energy collapses. The defining gesture is zigzag split alternation driven by condensed display type.

### Layout

Vertically stacked zones. The primary zone splits horizontally into two halves: leading text (headline, input, action element) and trailing photograph. A full-bleed accent surface block follows, containing a headline, a horizontal row of four small containers (each icon-led), and a horizontal text ticker strip. Below, alternating two-column zones follow the zigzag pattern — first with text-leading/photograph-trailing, then photograph-leading/text-trailing. Each zone uses approximately 50/50 proportions. An accent-tinted surface block appears at the bottom with the reverse split.

Density is high. Bold typography and large photographs fill each split. The accent block is dense with four containers and a ticker. Tight 60-80px vertical spacing between zones.

Content is contained with moderate margins (~80-100px). Accent surface blocks and photographs are full-bleed or extend to container edges. Photographs have rounded corners.

Hard surface-color cuts between zones. No horizontal rules. Container edges and rounded photograph corners provide internal definition.

### Token Map

**Color**
`surface.primary` fills the primary zone and text-leading split zones. `accent.primary` fills the full-bleed accent surface block. `surface.secondary` fills the accent-tinted bottom zone (soft tint). `surface.tertiary` fills the utility/announcement bar. `foreground.primary` carries all headlines on neutral surfaces. `foreground.inverse` carries text on accent surfaces. `foreground.secondary` handles body text. `accent.secondary` provides secondary container fills within the accent block.

**Shape**
`rounded.sm` on action elements and input fields. `rounded.md` on small feature containers and photographs.

**Elevation**
`shadow.sm` on small feature containers — subtle ambient lift.

### Decoration Role

Candid lifestyle photography fills one half of each zigzag split — warm, naturally-lit scenes of people in everyday contexts. A device mockup (hand holding phone) integrates product UI into one photographic zone. The ticker strip uses repeating text as a decorative/structural element.

## Hierarchy

Two dominant scale levels. Display headlines at ~4-4.5x body in condensed extra-bold weight. Body text at baseline. The extreme weight of the condensed type creates hierarchy through boldness rather than nuanced scale stepping.

Each zigzag split commands roughly equal attention — the alternation creates rhythm rather than dominance of one zone.

## Typography

The Headings category uses a condensed sans-serif face at extra-bold weight with very tight tracking — heavy and compact, creating maximum typographic impact. The Body category uses a geometric sans-serif at regular weight. The Captions category carries small labels and navigation at regular weight. The condensed/regular weight contrast between headings and body is the primary typographic device.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `surface.secondary`, `surface.tertiary`, `foreground.primary`, `foreground.secondary`, `foreground.inverse`, `accent.primary`, `accent.secondary`
- Radius tokens: `rounded.sm`, `rounded.md`
- Shadow tokens: `shadow.sm`
- Decorative imagery options: Candid Lifestyle Photography (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Zigzag Bold Split - Violet Bloom | Anton | Geist | Inter |  | Violet Bloom | Soft Lift | Candid Lifestyle Photography |
| Zigzag Bold Split - Forest Sage | Funnel Sans | Inter | Geist |  | Forest Sage | Gentle Lift | Candid Lifestyle Photography |
