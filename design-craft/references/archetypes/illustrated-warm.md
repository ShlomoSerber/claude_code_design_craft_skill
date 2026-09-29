# Illustrated Warm

## Core

### Identity

Hand-drawn character illustrations flanking a central product representation form a symmetrical pairing that is the structural cornerstone — neither element works alone. Remove the illustrations and the design collapses into a generic software presentation; remove the product depiction and it becomes a children's brand. The coexistence of detailed interface representation and loose illustrative figures at equal structural weight is the irreducible gesture.

### Layout

Centered single-column flow with a narrow text container for headings and body, expanding to a wider container for the product representation. The primary content zone follows a strict vertical stacking order: announcement strip, navigation zone, informational strip, heading, body text, primary action element, trust signal, tabbed selector, product representation. Below, an asymmetric two-column split places a large leading heading beside trailing body text and a link, with a full-width accordion-and-product panel beneath. Visual weight is symmetrically center-anchored throughout.

Density is moderate. The primary text zone is sparse — a few lines of copy, one action element, one trust signal — with visible breathing room between elements. The product representation is intentionally information-dense, communicating depth. Between major zones, generous vertical space creates clear chapter breaks.

All text and content sits within a centered inset container with generous lateral margins. The product representation extends to a slightly wider container but does not bleed to the container edge. The illustrations break outside the product container's lateral boundary and overlap into the margin zone — the only elements that escape the content column. The announcement strip and navigation zone span full width flush to edges.

Separation relies primarily on whitespace. The tabbed selector uses hairline rules beneath inactive items, with a color-distinguished underline on the active item. The product representation floats with elevation, clearly lifted off the ground surface. The accordion list uses hairline rules between each row. No background-color section breaks between text zones — the ground surface holds throughout except for a faint tinted zone behind a secondary product panel.

### Token Map

**Color**
`surface.primary` is the ground surface, holding across all text zones as the dominant background. `surface.secondary` provides a faint tint behind the secondary product panel — used once per view. `accent.primary` appears on the primary action element, active tab indicator, inline text links, and the announcement strip background — frequent but restricted to interactive and navigational elements, never on decorative surfaces. `accent.secondary` appears on trust-signal icons and small scattered illustrative accent marks — used sparingly, at most 3-4 instances per view. `foreground.muted` handles tertiary labels and caption-level text. `border.subtle` provides hairline rules for tab underlines and accordion row separators.

**Shape**
`rounded.full` on the primary action element, the announcement strip, the informational strip pill, and the tabbed selector container — pill shapes dominate interactive and informational elements. `rounded.xl` on the product representation container and the secondary product panel. `rounded.lg` on nested elements within the product representation (sidebar items, column cards). `rounded.md` on accordion rows and secondary link elements. `rounded.none` on the navigation zone and full-width structural elements.

**Elevation**
`shadow.lg` on the product representation container only — a single prominent lift that separates the product depiction from the ground surface. No other elements carry elevation.

### Decoration Role

Hand-drawn character illustrations (figures, animals, scene objects) flank the primary product representation — the primary and most distinctive decorative layer, positioned symmetrically outside the content column and overlapping into the margin zone. Small scattered confetti or sparkle marks appear within the announcement strip background. No photography, no gradients, no abstract geometric elements.

## Hierarchy

Three distinct scale levels. Primary headings at ~4-5x body text create strong dominance within the primary content zone. A secondary section heading runs at an even larger scale, creating a typographic break between zones. Trust signals and small labels sit at a compact distinct scale. No extreme contrast — the design prioritizes clarity and approachability over tension.

Within a zone, hierarchy is steep — one element clearly dominates. Across zones, hierarchy is moderate — each zone establishes its own focal point without competing aggressively with adjacent zones.

## Typography

The Headings category drives all primary and section-level statements at bold weight with tight but not compressed line-height — bold weight signals confidence. The Body category handles descriptive paragraphs and navigation links at normal weight. The Captions category carries informational strip text, trust-signal labels, tab labels, accordion row labels, and secondary prompts — a busy small-text register that frames and labels content zones. Hierarchy is built from bold weight contrast between Headings and Body, reinforced by scale.

## Parameters this archetype consumes

- Font roles: headings, body, captions
- Color tokens: `surface.primary`, `surface.secondary`, `foreground.primary`, `foreground.secondary`, `foreground.muted`, `border.subtle`, `accent.primary`, `accent.secondary`
- Radius tokens: `rounded.none`, `rounded.md`, `rounded.lg`, `rounded.xl`, `rounded.full`
- Shadow tokens: `shadow.lg`
- Decorative imagery options: Storybook Character Illustrations | Confetti Sparkle Marks (see `tokens/imagery.md`)

## Curated presets

| Preset | Headings | Body | Captions | Data | Palette | Elevation | Imagery |
|---|---|---|---|---|---|---|---|
| Illustrated Warm - Warm Linen | Playfair Display | Inter | Geist |  | Warm Linen | Soft Cloud | Storybook Character Illustrations |
| Illustrated Warm - Tangerine Orbit | Newsreader | Geist | Funnel Sans |  | Tangerine Orbit | Gentle Lift | Confetti Sparkle Marks |
