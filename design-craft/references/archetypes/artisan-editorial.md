# Artisan Editorial

## Core

### Identity

Full-bleed photography overlaid with display typography serves as the primary content stage, while hand-rendered illustration appears as inset imagery throughout — the two visual registers together define the archetype. An alternating mirrored rhythm between image-dominant and text-dominant zones creates a zigzag compositional flow. Remove either the photographic stage or the illustrated artwork and the design collapses into a generic editorial column.

### Layout

The primary content zone is a full-bleed photograph with the brand name overlaid at large scale, flanked by small contextual labels at the leading and trailing edges. Below, the layout alternates between asymmetric two-column splits: text in the leading column with illustration trailing, then photograph leading with text trailing — creating a mirrored left-right rhythm. The final zone is a full-width contrasting slab with a two-column split inside it. A centered icon marks transitions between zones. Visual weight shifts between leading and trailing positions across zones rather than holding a fixed anchor.

Density is sparse to moderate. Each zone contains one photograph or illustration, one headline, two to three body paragraphs, and occasionally a list — all with generous vertical padding. The primary content zone is the densest due to overlaid labels and an eyebrow line, but emptiness still dominates. On narrower formats, zones collapse to single-column stacked; vertical breathing room between zones is preserved rather than compressed.

The primary content zone bleeds full-width to all container edges. All text zones float inward with generous lateral margins — content never approaches the container edge. Inset images are sized to roughly half the content column width and sit flush with the column boundary on one side — never floating centered or bleeding. The contrasting final zone bleeds full-width but its internal content respects the same inset margins as the other zones.

Separation between the primary content zone and the body relies on a horizontal row of small labels divided by hairline vertical dividers. Within body zones, whitespace alone separates elements. The contrasting final zone creates a color-cut boundary with no rule or transition. No elevation anywhere — entirely flat. A centered decorative icon marks zone transitions without using a rule.

### Token Map

**Color**
`surface.primary` holds across all standard zones as the dominant ground surface — it unifies the layout. `surface.inverse` fills the final content zone as a contrasting slab, used once per view. `accent.primary` appears on the navigation zone background, primary action elements, and the decorative brand icon — at most 3-4 times per view, functioning as the single action and brand color. `foreground.primary` on standard surfaces, `foreground.inverse` on the contrasting slab. `foreground.secondary` handles secondary text. `border.subtle` is used only for the hairline vertical dividers in the label row. No secondary or tertiary accents — the palette is deliberately narrow.

**Shape**
`rounded.none` on all zone containers, full-bleed imagery, and the contrasting slab — the dominant shape language. `rounded.sm` on primary action elements only — barely softened, reinforcing restraint. Every other element is sharp-cornered.

**Elevation**
No elevation tokens used. The layout is entirely flat; separation relies on color boundaries and whitespace.

### Decoration Role

Two distinct decorative image types: lifestyle photography depicting people in architectural environments, and hand-rendered architectural illustrations of building exteriors and aerial views. The illustrated type is the more distinctive element — it signals intentional craft rather than relying on photography alone. A small ornamental brand icon appears as a centered zone-transition mark. No gradients, no abstract geometric elements.

## Hierarchy

Two-speed hierarchy. Primary headings at ~5-6x body text create strong dominance within the primary content zone. Zone headings at ~3-4x body text establish a clear secondary level. A flat, non-hierarchical register appears in the label row — all items equal-weight at ~1x body size. No extreme scale contrast; the design communicates through material variety rather than typographic tension.

Within zones, hierarchy is moderate — one heading clearly leads but does not overwhelm supporting content. Across zones, hierarchy is balanced — each zone operates as a self-contained editorial unit at comparable visual weight.

## Typography

The Headings category carries the brand name and all zone headlines — the brand name uses light or thin weight for an elegant, refined quality; zone headlines use regular weight with natural line-height. The Body category handles all running paragraphs and lists at comfortable reading size and normal weight. The Captions category carries eyebrow labels, flanking contextual labels, the label row items, and zone identifiers — all uppercase with wide letter-spacing, functioning as wayfinding and metadata throughout.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `surface.inverse`, `foreground.primary`, `foreground.secondary`, `foreground.inverse`, `border.subtle`, `accent.primary`
- Radius tokens: `rounded.none`, `rounded.sm`
- Shadow tokens: none
- Decorative imagery options: Lifestyle Workspace Photography | Architectural Hand Illustrations | Ornamental Brand Icon (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Artisan Editorial - Heritage Warmth | Playfair Display | Newsreader | Geist |  | Heritage Warmth | undefined | Lifestyle Workspace Photography |
| Artisan Editorial - Parchment Gold | Newsreader | Inter | Funnel Sans |  | Parchment Gold | undefined | Architectural Hand Illustrations |
