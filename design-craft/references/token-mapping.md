# Mapping semantic tokens to any target

Archetypes and palettes speak in semantic tokens. Before you write a single line of UI code, translate the chosen palette, radius scale and elevation preset into the theming primitive your target already has. Write that translation once, at the top of the project (a theme file, a stylesheet root, a constants module), and reference it everywhere. Never scatter hex codes through components.

## The vocabulary

**Color (17 tokens)**

| Token | Role |
|---|---|
| `surface.primary` | page / screen ground |
| `surface.secondary` | cards, tiles, panels on the ground |
| `surface.tertiary` | inputs, hover states, nested containers |
| `surface.inverse` | high-contrast block (dark on light themes, light on dark) |
| `foreground.primary` | main text on `surface.*` |
| `foreground.secondary` | supporting text |
| `foreground.muted` | captions, placeholders, disabled |
| `foreground.inverse` | text on `surface.inverse` and on `accent.primary` |
| `border.primary` | strong outlines, dividers that must be seen |
| `border.subtle` | hairlines, card edges |
| `accent.primary` | the one action color; also focus rings and links |
| `accent.secondary` | secondary highlight, charts, tags |
| `accent.tertiary` | third chart series, rare decorative use |
| `status.success` / `status.warning` / `status.error` / `status.info` | feedback only; never decorative |

**Radius** `rounded.none` 0 · `xs` 2 · `sm` 4 · `md` 6 · `lg` 8 · `xl` 12 · `2xl` 16 · `3xl` 24 · `4xl` 32 · `full` pill

**Elevation** `shadow.sm` · `shadow.md` · `shadow.lg` · `shadow.xl`, each a list of layered shadows from one preset in `tokens/shape-elevation.md`.

**Type roles** `headings` · `body` · `captions` · `data`, each bound to one font family from `tokens/fonts.md`.

## How to translate

The rule is the same everywhere: one named constant per token, named after the token, defined once.

**CSS custom properties**
```css
:root {
  --surface-primary: #FFFFFF;  --surface-secondary: #F9F9F9;
  --foreground-primary: #1A1A1A; --accent-primary: #5D5DFF;
  --radius-xl: 12px; --radius-full: 9999px;
  --shadow-sm: 0 1px 3px #0000000a;
  --font-headings: "Funnel Sans", sans-serif; --font-body: "Geist", sans-serif;
}
```
Dark mode: redefine the same names under `@media (prefers-color-scheme: dark)` with a dark palette; components never change.

**Tailwind v4**: declare the same names inside `@theme { --color-surface-primary: …; --radius-xl: …; --shadow-sm: …; --font-headings: …; }` and use `bg-surface-primary`, `text-foreground-muted`, `rounded-xl`, `shadow-sm`, `font-headings`.

**Flutter**: a `ThemeExtension` (or a plain class) with one field per token: `surfacePrimary`, `foregroundMuted`, `accentPrimary`, `radiusXl`, `shadowSm` (a `List<BoxShadow>`), plus `TextTheme` roles for headings/body/captions/data.

**SwiftUI / Jetpack Compose / React Native / anything else**: an object or enum named after the tokens (`Tokens.surfacePrimary`, `Tokens.radiusXl`). Same names, same meanings.

**Design tools (Figma, Pencil, Sketch)**: variables or styles named exactly `surface/primary`, `accent/primary`, `radius/xl`, `shadow/sm`.

## Translation checklist

- Every one of the 17 color tokens exists, even the ones this archetype does not use today.
- Text on `surface.inverse` and on `accent.primary` uses `foreground.inverse`; verify contrast (4.5:1 for body, 3:1 for large text).
- Shadows are the layered lists from the preset, not a single `0 2px 4px rgba(0,0,0,.2)`.
- Fonts load from Google Fonts (or bundled files) with the weights the archetype uses; declare fallbacks.
- Spacing scale is chosen (4- or 8-based) and exposed the same way (`space.1` … `space.12` or the framework equivalent).
