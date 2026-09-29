# Blueprint Technical

## Core

### Identity

Technical wireframe diagrams — constructed from thin lines, dotted connectors, and labeled panels — serve as the primary visual content, replacing photography or product screenshots. Headlines use inline inverse-filled "boxes" behind key words as emphasis. Remove the wireframe diagrams and the composition becomes a generic text page; remove the boxed headline emphasis and the typographic identity dissolves. The defining gesture is wireframe-as-content combined with inline typographic highlighting.

### Layout

Vertically stacked zones within a centered container with moderate lateral margins (~100-120px). The primary zone centers a large headline with inline boxed emphasis, a pair of action elements, and a trust strip of monochromatic marks. Below, a large technical wireframe diagram spans most of the container width — a multi-panel schematic with labeled components connected by dotted lines. A statistics strip follows with three items in a horizontal row. A section zone presents a large centered headline with inline boxed emphasis, followed by a 3-column, 2-row grid of containers, each with a small wireframe icon, title, description, and action link. A closing zone centers text and action elements.

Density is moderate to high. The primary zone is moderately open. The wireframe diagram is dense with labeled components. The feature grid is dense with six containers.

Content floats inward with moderate margins. The wireframe diagram extends wider than the text column. Feature containers have sharp corners and hairline border edges.

Whitespace and hairline dividers separate zones. Feature containers are defined by subtle border edges. No background color alternation.

### Token Map

**Color**
`surface.primary` fills the main ground — a warm off-white. `surface.secondary` provides a clean white for the feature grid area. `foreground.primary` carries all headlines, wireframe lines, and diagram labels. `foreground.secondary` handles body text. `foreground.muted` carries technical metadata labels within diagrams. `accent.primary` fills the inline boxed highlight behind headline words and small badge indicators. `border.primary` provides wireframe diagram lines and dotted connectors. `border.subtle` provides hairline edges on feature containers.

**Shape**
`rounded.none` on all containers, buttons, feature cards, and diagram panels — sharp corners throughout, creating a technical/utilitarian appearance. No rounding anywhere.

**Elevation**
No elevation used. All elements sit flat. Depth comes from wireframe line overlapping and layering.

### Decoration Role

Technical wireframe diagrams are the primary visual content — constructed from thin solid and dotted lines with labeled nodes. These are structural/content elements, not decoration. Inline inverse-filled rectangles behind headline words are a typographic device, not imagery.

## Hierarchy

Three scale levels. Primary heading at ~5x body with inline boxed emphasis. Section headings at ~3x body. Statistical numbers at ~2x body. Body text at baseline.

The primary zone dominates through headline scale and boxed emphasis. The wireframe diagram carries weight through visual complexity. Feature containers operate at a uniform lower level.

## Typography

The Headings category drives primary statements with heavy/bold weight and tight tracking in a condensed sans-serif face. Inline inverse-filled boxes behind select words create visual punch. The Body category handles descriptive text at regular weight in a geometric sans-serif. The Captions category carries technical labels in the diagram using a monospace face at small scale. The Data category displays statistical numbers at bold weight.

## Parameters this archetype consumes

- Font roles: headings, body, captions, data
- Color tokens: `surface.primary`, `surface.secondary`, `foreground.primary`, `foreground.secondary`, `foreground.muted`, `border.primary`, `border.subtle`, `accent.primary`
- Radius tokens: `rounded.none`
- Shadow tokens: none
- Decorative imagery options: Technical Construction Overlay (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Blueprint Technical - Rose Charcoal | Anton | Inter | IBM Plex Mono | Geist Mono | Rose Charcoal | undefined | Technical Construction Overlay |
| Blueprint Technical - Fern Journal | Funnel Sans | Geist | Geist Mono | IBM Plex Mono | Fern Journal | undefined | Technical Construction Overlay |
