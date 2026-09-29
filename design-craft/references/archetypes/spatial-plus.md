# Spatial Plus

## Core

### Identity

A single repeated glyph mark — small, precise, and used as the only decorative element across the entire composition — is the design's typographic signature. It appears as a lone mark in a corner, as an eyebrow prefix before section labels, and as a vertical column of marks floating between content zones. This minimal glyph repetition creates visual rhythm and brand consistency without illustration, gradient, or pattern. Remove the repeated marks and the design loses its personality entirely, collapsing into a generic layout.

### Layout

The primary content zone is a large rounded container block that floats inward from the container edge with visible margin on all sides — it does not bleed to the boundary, reading as a contained object rather than a background zone. Inside it, content is leading-anchored with a display-scale element at the bottom-leading position and a photograph card floating in the upper-trailing quadrant. Below, the layout shifts to a centered large-scale statement paragraph in open space, then a two-column asymmetric image grid — a taller image leading, a wider image trailing — with a narrow decorative mark column floating between them as a vertical axis.

Density is sparse. The primary content zone contains a headline, a display element, one photograph card, and a few small text labels — surrounded by significant open space. The statement zone is a single large paragraph centered with generous breathing room. The image grid has two large images with a narrow gap column and minimal caption text. Weight alternates between leading-anchored in the primary zone and centered in the statement zone.

All primary containers float inward from the container edge. The photograph card within the primary zone floats inset within its parent. The image grid extends close to but not past the container edge with modest outer margins. Small elements (captions, eyebrow labels) are comfortably inset. Separation between zones relies on color contrast and whitespace alone — no rules, no borders, no dividers between sections.

### Token Map

**Color**
`surface.primary` is the ground — the base surface visible around and below the primary content zone. `surface.inverse` is used exclusively for the primary content zone, creating one high-contrast contained block as a spatial object. `accent.primary` appears only on the repeated glyph marks and the eyebrow label prefix — never on action elements, never on surfaces, never as a fill. It functions purely as a punctuation color: small, precise, and charged with identity through repetition — at most 5-6 instances per view. `foreground.muted` handles the faded continuation of split-tone text passages and secondary label elements.

**Shape**
`rounded.2xl` on the primary content zone container — the largest and most prominent rounded element. `rounded.xl` on the photograph card within the primary zone and all content-zone images. `rounded.none` on the navigation zone and all structural containers. No `rounded.full` anywhere — rounded containers serve as spatial objects, not interactive affordances.

**Elevation**
`shadow.md` on the photograph card within the primary content zone only — lifting it off the parent surface. Primary containers themselves cast no shadow; they are distinguished from the ground by fill color contrast alone. `border.subtle` hairlines appear only inside small overlay cards nested within image content.

### Decoration Role

A single repeated accent-colored plus-sign glyph mark is the sole decorative element — appearing as a corner mark, as a section label prefix, and as a vertical column of marks between content zones. This typographic/graphic mark is part of the structural identity and is referenced via `accent.primary` in the Token Map; it is not an imagery category. High-quality editorial photography (portrait and landscape) serves as the primary non-typographic visual content in image zones. No illustrations, no gradients, no abstract shapes. Decoration is achieved through glyph repetition and photographic content alone.

## Hierarchy

Two distinct scale levels with high contrast between them. Primary display elements at ~6-7x utility-scale text create a two-speed system: utility text reads first at human scale, then the display element registers as a spatial event. A mid-scale statement level at ~3x body text bridges the gap in secondary zones, using a two-tone foreground split as a reading-pace device. No mid-scale within the primary content zone — the design operates at monumental and utility only within that container.

Within the primary container, hierarchy is steep — one element dominates decisively. Across zones, hierarchy resets: each zone establishes its own dominant element independently.

## Typography

The Headings category carries display-scale elements at heavy weight with tight tracking — reading as wordmark-scale objects rather than sentences. The Body category handles subtitle headlines and all running paragraphs at comfortable weight and natural spacing. The Captions category carries small uppercase labels with wide letter-spacing for service identifiers and eyebrow prefixes, plus standard-case captions beneath images. A two-tone text passage — `foreground.primary` fading to `foreground.muted` mid-sentence — is a typographic device applied within the Body category to direct reading pace.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `surface.inverse`, `foreground.primary`, `foreground.secondary`, `foreground.muted`, `foreground.inverse`, `border.subtle`, `accent.primary`
- Radius tokens: `rounded.none`, `rounded.xl`, `rounded.2xl`
- Shadow tokens: `shadow.md`
- Decorative imagery options: Editorial Portrait Photography | Landscape Photography (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Spatial Plus - Terminal Green | Anton | Inter | Geist |  | Terminal Green | Sharp Depth | Editorial Portrait Photography |
| Spatial Plus - Heritage Warmth | Funnel Sans | Geist | Newsreader |  | Heritage Warmth | Soft Lift | Landscape Photography |
