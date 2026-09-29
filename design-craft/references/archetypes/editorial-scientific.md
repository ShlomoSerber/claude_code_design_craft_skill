# Editorial Scientific

## Core

### Identity

A full-bleed photographic plane anchors the composition as its central visual event — everything else is arranged around and layered onto this foundational image surface. Remove the photographic plane and the design collapses into an ordinary text layout. The tension between sparse, restrained typography floating in open space and the dense, edge-to-edge photographic zone creates a rhythm of restraint and immersion.

### Layout

The layout follows a wide single-column rhythm with generous horizontal margins. The primary content zone uses an asymmetric leading-heavy split: a large heading block occupies the leading half, a descriptor and action cluster the trailing half. Below, the photographic zone breaks the column constraint entirely and bleeds edge-to-edge to the container boundary — the single element permitted to escape the inset margin system.

Density is sparse in the primary content zone — only a heading, a short descriptor, and action elements, surrounded by abundant open space. The photographic zone is denser: the image fills the entire block with a floating overlay container centered within it, but empty space still dominates the edges. Weight is leading-anchored in the primary content zone, then recentered by the full-width photographic zone below.

Separation relies on whitespace alone in the primary content and navigation zones — no border strokes, no dividers, no background shifts. The floating overlay container uses elevation to distinguish itself as a foreground layer over the photographic surface. Lightweight annotation marks (figure labels, tick-mark ruler motifs) act as structural separators at zone boundaries without using formal border rules.

### Token Map

**Color**
`surface.primary` dominates the composition as the background surface. `surface.inverse` is used exclusively for the floating overlay container, creating a single high-contrast zone that anchors the photographic section. `accent.primary` is reserved solely for the primary action element fill and a single indicator mark — it appears at most twice per view, never in body text, never in navigation, never decoratively. `foreground.muted` handles partner marks and secondary navigation text. No secondary or tertiary accents exist; restraint is absolute.

**Shape**
`rounded.md` on primary action elements and the floating overlay container. `rounded.full` on secondary outlined action elements. `rounded.none` on the navigation zone and all section-level containers. The deliberate mix — sharp containers with softened interactive elements — keeps the layout grounded while distinguishing actionable elements.

**Elevation**
`shadow.lg` on the floating overlay container only — creating a distinct foreground layer over the photographic surface. All other elements rely on color contrast or whitespace for separation, not elevation.

### Decoration Role

Full-bleed landscape photography is the primary decorative layer — it functions as both structural anchor and content. Overlaid thin geometric construction lines (circular arcs, diagonal rules at low opacity) appear on the photographic surface as technical annotation marks. A horizontal ruler with tick marks at the composition base reinforces the technical-reference register. Dot indicators on the leading edge of the photographic zone serve as sequential position markers.

## Hierarchy

Three distinct scale levels forming a clean three-speed system. Primary headings at ~4-5x body text create strong dominance within the primary content zone. Body text operates at the mid level. Utility text (navigation, labels) sits at a small-but-legible baseline level.

Within the primary content zone, hierarchy is steep — the heading clearly dominates. Across zones, hierarchy resets — the photographic zone and its overlay container establish their own internal scale relationships independent of the typographic zones.

## Typography

The Headings category drives primary statements at high scale with relaxed line-height — multi-line titles stack with natural breathing room, not compression. The Body category handles all descriptor text, action labels, and navigation links at normal weight and spacing. The Captions category carries eyebrow labels, figure annotations, and ruler metadata — rendered in wide uppercase letter-spacing to signal reference material and technical precision. Hierarchy across categories is built from scale contrast between Headings and Body, with Captions providing a distinct third register through uppercase tracking rather than size.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `surface.inverse`, `foreground.primary`, `foreground.secondary`, `foreground.muted`, `foreground.inverse`, `accent.primary`
- Radius tokens: `rounded.none`, `rounded.md`, `rounded.full`
- Shadow tokens: `shadow.lg`
- Decorative imagery options: Landscape Photography | Technical Construction Overlay (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Editorial Scientific - Carbon Frost | Inter | Newsreader | Geist |  | Carbon Frost | Soft Lift | Technical Construction Overlay |
| Editorial Scientific - Fern Journal | Funnel Sans | Geist | Inter |  | Fern Journal | Gentle Lift | Landscape Photography |
