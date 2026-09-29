---
name: design-craft
description: Visual and product design method for any UI surface (landing pages, web apps, dashboards, mobile screens, slide decks, components, HTML artifacts, design-tool mockups) in any framework or language. Use this skill whenever the user asks to design, build, mock up, prototype, restyle, "make it look good/modern/premium", pick colors or fonts, create a theme or design system, or when you are about to write any UI code with visual decisions in it, even if the user does not say "design". Also use it to critique or improve an existing UI. Do not use for charts alone (see dataviz) or for pure logic work.
---

# Design Craft

A design looks generic when the model invents a look on the fly: every element in a card, one accent color sprayed everywhere, uniform grids, gradients and shadows as decoration. This skill replaces improvisation with a method: choose a **structural archetype**, parametrize it with **semantic tokens** (palette, fonts, radius, elevation), apply the **task guide** for the surface you are building, then **verify** against a checklist and fix in place.

Structure, color, type, shape and elevation are independent axes. Deciding each one explicitly, from a closed set of good options, is what makes the result look designed instead of generated.

## Workflow

1. **Classify the surface.** Landing/marketing page, functional web app, mobile app, slide deck, or a single component. Read the matching guide in `references/guides/` (see map below). A landing page sells one action; a web app serves one task per screen; do not mix the two.
2. **Define content before visuals.** Write the headline, the primary action, the sections and their order, the data that must be visible. Words drive layout, never the reverse.
3. **Pick an archetype.** Open `references/archetypes/INDEX.md`, choose one archetype that fits the content and mood, and read its full file. If the user has a brand or an existing design system, treat that as the archetype and skip to step 4 with its tokens. Do not blend two archetypes.
4. **Pick parameters.** One palette from `references/tokens/palettes.md`, one font per role from `references/tokens/fonts.md` (start from the archetype's curated presets), the radius scale and one elevation preset from `references/tokens/shape-elevation.md`, and, only if the archetype's Decoration Role asks for it, one imagery spec from `references/tokens/imagery.md`.
5. **Translate tokens to the target.** Follow `references/token-mapping.md`: define every token once (CSS variables, Tailwind theme, Flutter ThemeExtension, a constants module, design-tool variables) and reference tokens everywhere. Never hardcode hex values in components.
6. **Build one screen at a time.** Finish a screen or section, then verify it (checklist below) before starting the next. Show progress early; iterate on the real output rather than planning every pixel.
7. **Verify and fix in place.** Run the checklist on the rendered result (screenshot, preview, or a careful read of the layout). Fix the existing elements; do not delete and regenerate.

State the choices in one line before building, e.g. "Archetype: Soft Bento · Palette: Fern Journal · Headings: Inter / Body: Geist / Data: IBM Plex Mono · Elevation: Soft Lift". It keeps you honest and lets the user redirect early.

## Anti-slop rules

These are the habits that make AI output look like AI output. Each one is a default to resist, not a ban.

- **Cards are not wrappers.** Use a container only when it has a structural or functional purpose (grouping a unit of data, an interactive region). Text sections, lists and headers usually need whitespace, not a box.
- **One accent, used rarely.** `accent.primary` marks the primary action and a few key signals. If it appears more than 3–4 times in a view, the hierarchy is gone.
- **Effects are brand, not decoration.** Gradients, shadows, glows, blurs and large radii belong where the archetype or the brand puts them. Otherwise leave them out. A shadow on everything equals a shadow on nothing.
- **Break the uniform grid.** Identical cards in an identical grid, section after section, reads as template output. Vary density and scale between sections; alternate text-heavy and visual zones; let one element dominate each section.
- **Whitespace separates; dividers are a last resort.** Prefer gap and grouping over rules and borders. Group related elements tightly, separate groups generously.
- **No decorative icons, no icon-per-bullet, no emoji in UI.** Icons carry meaning or they are absent.
- **No centered paragraphs.** Center a headline and at most 2–3 short lines. Body copy is left-aligned with a 50–75 character measure.
- **No fake polish.** Lorem ipsum, "Feature 1 / Feature 2", and identical placeholder cards signal that nobody thought about the content. Write plausible, specific copy and data.

## Composition principles

- **One dominant region per screen.** Visual weight follows importance. Avoid equal-weight layouts and competing focal points.
- **One primary action per screen or section.** Secondary actions are visually reduced; destructive ones are distinct; rare ones go to an overflow.
- **One alignment axis per section.** Never mix left-aligned and centered content in the same section.
- **Steep hierarchy within a container, moderate across containers.** Typographic scale needs clear jumps (a heading at 2–5× body, not 1.2×). Use weight and size before adding a third font.
- **Deliberate density.** Compact for data-heavy tools, medium by default, airy for simple flows. Do not mix modes inside one screen.
- **Rhythm.** Alternate section types and densities. Dark or inverse blocks add credibility and depth; light blocks explain.
- **Type minimums.** Body 14 px on web, 16 px on mobile; captions 12 px; line-height 1.4–1.6 for body, 1.0–1.2 for display. Never scale text down to make something fit; cut or split instead.
- **Touch and pointer targets** 44 px minimum on mobile, 32 px on desktop.
- **Every data surface has loading, empty, error and success states** designed in the same container so the layout does not jump.
- **Text over images always gets a contrast treatment** (overlay, scrim, or its own container). Images are never stretched or distorted.
- **Spacing comes from one scale** (4- or 8-based). Odd one-off values (13, 18, 27) are the fastest way to make a layout feel off.

## Verification checklist

Run it after each screen or section, on the rendered result when you can get one:

- Layout is not collapsed, overflowing, or clipped; content fits its container at the target width and at a narrow width.
- One clear focal point; the primary action is the most prominent element.
- Text contrast passes: 4.5:1 for body, 3:1 for large text; text on inverse or accent surfaces uses `foreground.inverse`.
- Alignment is consistent along one axis per section; spacing values all come from the scale.
- Token usage matches the archetype's Token Map (surfaces, accent count, radius tiers, shadow tiers).
- Typography follows the archetype: right family per role, clear size jumps, no orphan sizes.
- No unnecessary containers, effects or icons survived from a first draft.
- Copy is specific and plausible; no placeholder text remains unless the user asked for it.
- The result matches what the user asked for and nothing they did not ask for.

If a check fails, adjust the existing elements. Regenerating from scratch loses the parts that already worked.

## Reference map

| Need | Read |
|---|---|
| Marketing / landing page | `references/guides/landing-page.md` |
| Functional product UI (dashboard, admin, CRM, editor, any app) | `references/guides/web-app.md` then `references/guides/product-patterns.md` |
| Mobile screens | `references/guides/mobile-app.md` (plus `web-app.md` for product logic) |
| Slide decks | `references/guides/slides.md` |
| Choosing a look | `references/archetypes/INDEX.md`, then one archetype file |
| Colors | `references/tokens/palettes.md` (26 palettes, 17 tokens each) |
| Fonts and pairings | `references/tokens/fonts.md` |
| Radius and shadows | `references/tokens/shape-elevation.md` |
| Decorative imagery construction | `references/tokens/imagery.md` |
| Turning tokens into code or tool variables | `references/token-mapping.md` |
| Machine-readable tokens | `references/tokens/tokens.json` |

Load only what the task needs. A single component rarely needs an archetype; a full page always does.

## Critiquing an existing UI

When asked to review or improve a design, run the anti-slop rules and the checklist as an audit. Name the archetype the design is closest to, list the violations in order of visual impact, and propose the smallest set of changes that fixes them. Prefer removing elements over adding them.
