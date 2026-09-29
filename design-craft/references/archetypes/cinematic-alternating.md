# Cinematic Alternating

## Core

### Identity

Full-bleed photography serves as both the primary content backdrop and as an embedded layer within nested product representations — the same imagery recurs at multiple containment levels, creating a recursive visual depth. Remove this pervasive photographic layering and the design collapses into a generic inverse-ground layout. The defining structural move is this recursion: imagery appears behind content, and again inside the content's own visual elements.

### Layout

Two compositional registers alternate in sequence. The primary content zone is a full-bleed photographic field with centered typography overlaid at mid-height — the sparsest zone, holding only a heading, a single line of body text, and one action element. Below, content zones follow a strict alternating two-column arrangement: image-leading/text-trailing, then text-leading/image-trailing, repeating in rhythm. Each pair is separated by a full-width hairline rule. Visual weight centers in the primary zone, then alternates leading-trailing through the content rows, producing a diagonal scanning rhythm.

Density is moderate. Each content row contains one image representation and one text block — a small icon-plus-label eyebrow, a heading, two sentences of body, and a single action element. Generous vertical spacing above and below each row prevents crowding.

The primary zone photograph bleeds full-width to all container edges. The inverse ground below also spans edge-to-edge. Content within rows floats inward with consistent lateral margins — text and images never approach the container edge. Product representations are inset within their column with comfortable padding. Full-width hairline rules are the only flush non-photographic elements.

### Token Map

**Color**
`surface.primary` appears only as the navigation zone background — a narrow contrasting strip at the top. `surface.inverse` is the dominant surface, filling the primary zone and all content rows below it without interruption. `foreground.inverse` carries all text on the inverse ground. `foreground.muted` handles body text and captions at reduced contrast. `accent.primary` appears with maximum restraint — only on a single navigation action element and possibly an eyebrow icon tint, never as a fill or background anywhere else. `border.subtle` draws the full-width hairline rules separating each content row.

**Shape**
`rounded.full` on the primary action element — a pill shape that reads as the single approachable interactive element against the otherwise rectilinear layout. `rounded.xl` on product representation containers. `rounded.lg` on small secondary action elements within content rows. `rounded.none` on the navigation zone, section containers, and all structural layout elements. The contrast between the pill action element and the rectangular structure reinforces a single-action hierarchy.

**Elevation**
`shadow.lg` on product representation containers, lifting them as distinct objects against the inverse ground. No elevation on layout sections or structural containers.

### Decoration Role

Full-bleed photography is the sole decorative layer, appearing as the primary content zone backdrop and embedded as a background within product UI representations. The recursion of photography-within-nested-interface is the distinctive decorative gesture. No illustrations, no abstract shapes, no gradients.

## Hierarchy

Two-speed hierarchy. Primary headings at ~3-4x body text create clear dominance in the primary content zone without extreme scale — they read as considered statements rather than architectural events. Content row headings sit at ~2-3x body, clearly distinct but restrained. Authority comes from photographic presence and compositional rhythm rather than typographic scale tension. Weight plays a minimal role across all levels, keeping the overall tone understated.

## Typography

The Headings category carries the primary zone heading and all content row headings at regular weight with natural, relaxed line-height — never aggressive. The Body category handles all descriptor paragraphs at a comfortable reading size. The Captions category carries eyebrow labels — a small icon followed by a short label in light weight — providing the only navigational metadata in each content row. Hierarchy is built from scale contrast between Headings and Body; weight differentiation is minimal.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `surface.inverse`, `foreground.primary`, `foreground.muted`, `foreground.inverse`, `border.subtle`, `accent.primary`
- Radius tokens: `rounded.none`, `rounded.lg`, `rounded.xl`, `rounded.full`
- Shadow tokens: `shadow.lg`
- Decorative imagery options: Atmospheric Landscape Photography (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Cinematic Alternating - Deep Space Neon | Anton | Geist | Inter |  | Deep Space Neon | Sharp Depth | Atmospheric Landscape Photography |
| Cinematic Alternating - Forest Sage | Funnel Sans | Newsreader | Geist |  | Forest Sage | Soft Cloud | Atmospheric Landscape Photography |
