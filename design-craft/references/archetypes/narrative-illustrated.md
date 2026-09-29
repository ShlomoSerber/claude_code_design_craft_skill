# Narrative Illustrated

## Core

### Identity

A full-bleed painterly illustration anchors the primary zone as an immersive environmental scene — not accent but load-bearing surface that establishes the entire compositional atmosphere. Below, the composition unfolds as a narrative reading flow with asymmetric image-text pairings. Remove the illustration and the composition loses its environmental anchor; remove the narrative text flow and the illustration becomes a standalone image. The defining gesture is illustrated-environment-as-ground paired with long-form narrative reading.

### Layout

The primary content zone is a full-bleed illustrated scene with centered typography and a single floating translucent container (glassmorphism effect) anchored to one side. Below, the composition shifts to a neutral surface. Content zones use asymmetric two-column arrangements: a decorative image element on one side (~40%) paired with narrative serif text on the other (~60%). A third zone presents left-anchored text paired with a simple technical diagram at the trailing edge.

Density is very sparse. Each zone contains minimal elements with aggressive vertical spacing (~160-200px) between zones. Content is contained within a narrow reading column with very generous lateral margins (~150-200px), creating an intimate, editorial reading experience.

The full-bleed illustration-to-neutral-surface transition is the primary boundary. Whitespace alone separates subsequent zones. No rules, no dividers.

### Token Map

**Color**
`surface.primary` fills all zones below the illustrated primary zone. `foreground.primary` carries all headlines and narrative text on the neutral surface. `foreground.secondary` carries muted or de-emphasized words within narrative headings — selective dimming within a sentence. `foreground.inverse` carries text on the illustrated surface. `accent.primary` does not appear prominently — the illustration provides all visual accent. `border.subtle` provides a faint edge on the technical diagram container.

**Shape**
`rounded.lg` on the floating translucent container in the primary zone and on the technical diagram container.

**Elevation**
`shadow.md` on the floating translucent container — combined with a background blur (glassmorphism) as the sole depth instance.

### Decoration Role

Full-bleed painterly digital illustration serves as the primary zone ground — a detailed environmental scene with figures, flora, and architectural elements. A pixel-art style image serves as a secondary decorative accent in a subsequent zone — sized smaller than the illustration, used as a visual anchor for adjacent text.

## Hierarchy

Two distinct scale levels. Primary heading at ~3.5x body. Narrative headings at ~2x body. Body text at baseline. Hierarchy is restrained — the composition prioritizes reading flow over dramatic scale contrast.

The illustrated primary zone dominates through visual density and full-bleed treatment. Subsequent narrative zones are deliberately quieter.

## Typography

The Headings category uses a high-contrast serif face at display and section scales with regular to medium weight and standard editorial tracking. The Body category uses a clean sans-serif at regular weight for navigation, labels, and supporting text. Selective color dimming within headings (certain words rendered in `foreground.secondary`) provides inline emphasis without weight or style changes.

## Parameters this archetype consumes

- Font roles: headings, body
- Color tokens: `surface.primary`, `foreground.primary`, `foreground.secondary`, `foreground.inverse`, `border.subtle`
- Radius tokens: `rounded.lg`
- Shadow tokens: `shadow.md`
- Decorative imagery options: Painterly Scene Illustration | Pixel Art Accent (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Narrative Illustrated - Twilight Garden | Playfair Display | Geist |  |  | Twilight Garden | Soft Cloud | Painterly Scene Illustration |
| Narrative Illustrated - Warm Linen | Newsreader | Inter |  |  | Warm Linen | Gentle Lift | Pixel Art Accent |
