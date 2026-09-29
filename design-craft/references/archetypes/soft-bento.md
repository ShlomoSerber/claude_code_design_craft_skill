# Soft Bento

## Core

### Identity

A visible bento grid of rounded container blocks is the structural and aesthetic cornerstone — the design is explicitly a set of discrete tiles, not a continuous flow. Each tile serves a single purpose. Remove the tiled container system and the design collapses into a generic column layout. The tension between softened containers and rigid grid placement is the archetype's emotional core.

### Layout

The grid uses two columns of tiles at varying heights, sitting side by side but never sharing edges — gap space between them reveals the ground surface and gives each tile breathing room. Weight is anchored to the leading column: the primary message tile always occupies the leading position, with supporting or demonstrative content in the secondary column. Between grid clusters, single-column full-width text zones provide rhythm breaks.

Density is moderate. Each tile contains only one or two content types with generous internal padding — no tile is crowded. Between clusters, substantial vertical space separates each grid group from the next. All tiles float inward from the container edge with a consistent outer margin — nothing bleeds to the boundary. Inside each tile, content is inset with generous padding. Nested elements within tiles are themselves inset, creating layered containment.

Separation between tiles relies entirely on gap space revealing the ground surface. No border strokes between tiles, no dividers within tiles, no rules between zones. Whitespace is the sole structural separator. Elevation appears only on nested elements, distinguishing them from the tile surface.

### Token Map

**Color**
`surface.primary` is the ground, visible in the gaps between tiles — the connective tissue of the layout. `surface.secondary` fills all tiles as the dominant surface. One tile per cluster uses `surface.inverse` as a high-contrast block — the sole tonal break on the page. `accent.primary` appears sparingly: on the primary action element, on status indicators within nested elements, and on any data visualization — at most 3-4 times per view. `foreground.muted` handles tertiary marks and caption labels.

**Shape**
`rounded.2xl` on all tiles and the primary action block — the dominant container radius that defines the grid's soft character. `rounded.xl` on nested elements within tiles. `rounded.full` on small labeling containers, action elements, and status indicators. `rounded.lg` on small interactive elements within nested content. No `rounded.none` anywhere — every element is softened.

**Elevation**
`shadow.sm` on nested elements within tiles only — distinguishing interactive-feeling content from the tile surface. Tiles themselves cast no shadow; they are distinguished from the ground by fill color alone.

### Decoration Role

Simplified UI representations — schematic depictions of product interfaces showing structured data — serve as the primary non-typographic visual content within tiles, functioning as both decoration and demonstration. A small data visualization (e.g., a sparkline) may appear within one nested element. No photography, no gradients, no abstract illustration. A graduated-scale text list — where items vary in size to create a typographic arc — is the single expressive typographic decoration.

## Hierarchy

Three distinct scale levels. Primary headings at ~4-5x body text create strong dominance within their container. Data figures at ~3x their caption labels form a clear secondary level. Body text and captions operate at the baseline level.

Within a container, hierarchy is steep — one element clearly dominates. Across containers, hierarchy is moderate — containers compete less with each other and more within themselves.

## Typography

The Headings category carries primary statements with natural line-height — multi-line titles read as calm, considered statements. The Body category handles all descriptive text and navigation links at normal weight and spacing. The Data category drives featured figures at large display scale, each paired with a Captions label beneath. The Captions category handles small labeling elements at regular weight — relying on container shape for visual distinction rather than letter-spacing or case transformation.

## Parameters this archetype consumes

- Font roles: headings, body, captions, data
- Color tokens: `surface.primary`, `surface.secondary`, `surface.inverse`, `foreground.primary`, `foreground.secondary`, `foreground.muted`, `foreground.inverse`, `accent.primary`
- Radius tokens: `rounded.lg`, `rounded.xl`, `rounded.2xl`, `rounded.full`
- Shadow tokens: `shadow.sm`

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Soft Bento - Fern Journal | Inter | Geist | Newsreader | IBM Plex Mono | Fern Journal | Soft Lift | none |
| Soft Bento - Carbon Frost | Geist | Inter | Funnel Sans | Geist Mono | Carbon Frost | Gentle Lift | none |
