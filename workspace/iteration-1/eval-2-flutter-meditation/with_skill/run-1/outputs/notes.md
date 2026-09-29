# Design notes — meditation home tab

**Archetype: Soft Bento · Palette: Forest Sage · Headings: Inter / Body: Geist / Captions: Newsreader / Data: IBM Plex Mono · Elevation: Soft Lift**

## Archetype: Soft Bento

The screen is a small set of discrete purposes (today's session, three quick picks, a history list), which is exactly what Soft Bento models: rounded tiles separated only by the ground showing through the gaps, one inverse tile per cluster as the sole tonal break, and full-width text zones between clusters for rhythm. Mapping:

- Hero = the one `surface.inverse` tile. It carries the primary action (a nested pill with `shadow.sm`, the only shadow inside content, per the token map).
- Quick sessions = a horizontal cluster of `surface.secondary` tiles where the data figure (5 / 10 / 20 in the mono face) dominates at ~3x its caption, label beneath, as the archetype prescribes.
- Recent sessions = a plain list on the ground, no cards, no dividers; whitespace separates rows. The only container per row is a functional 52px duration mark.
- Greeting = text on the ground, no box.

I considered Narrative Illustrated (calmer, painterly) but it requires a full-bleed illustration I cannot ship in a single Dart file, and Gradient Prompt Stack, whose gradient block would be decoration here. Soft Bento needs no imagery and holds up with pure widgets.

## Palette: Forest Sage

Deliberately not one of Soft Bento's two curated palettes (Fern Journal, Carbon Frost). Both are white-and-grey product palettes; a meditation app wants a warm, tinted ground. Forest Sage gives an off-white linen ground (`#F5F3EE`), sage tiles (`#C8DBBC`) and a deep forest inverse (`#1B3A28`) that reads as evening and stillness rather than "dashboard".

Contrast decisions that followed from it:
- `foreground.secondary` on the sage tiles is only 4.1:1, so all text inside tiles uses `foreground.primary` (8.5:1); `foreground.secondary` is used only on the ground (5.5:1).
- `foreground.muted` (2.8:1 on the ground) is defined but unused for text.
- `accent.primary` (`#2D5E3A`) is too close to the inverse tile to serve as the hero CTA, so the "Begin" pill uses `accent.tertiary` with `foreground.primary` text (7.1:1). `accent.primary` then appears exactly once: the selected tab item.
- Supporting text on the inverse tile is a single derived token (`foregroundInverseSecondary`, white at 72%), 7:1 against the inverse surface.

## Fonts

The Soft Bento – Fern Journal preset pairing, kept intact: Inter for headings (calm, neutral at 28–32), Geist for body and tab labels, Newsreader for captions (the serif gives dates and practice names a quiet editorial warmth without adding a display face), IBM Plex Mono for durations so the numbers line up and read as data. Families are referenced by name with platform fallbacks since no font package is allowed; declare them in `pubspec.yaml`.

## Elevation: Soft Lift

The preset paired with this archetype's first curated preset. Tiles cast no shadow (fill alone separates them from the ground); `shadow.sm` sits on the nested "Begin" pill only. The one exception is the floating tab bar, which uses `shadow.md` because the mobile guide asks for a frosted capsule bar lifted above scrolling content; it is chrome, not a tile.

## Other choices

- Radius: `rounded.2xl` (16) on tiles, `rounded.xl` (12) on the nested duration mark and row ink, `rounded.full` on the pill and tab highlight. Nothing square.
- Spacing is a 4-based scale exposed as `space1…space10`; 20px wrapper padding applied once, 32px between sections, 24px greeting-to-hero.
- Tab bar per the mobile guide: 56px capsule inset 16px from the sides and 12px from the bottom (plus safe area), 70% ground fill over a backdrop blur, filled icon + accent tint on a soft capsule for the selected item.
- Empty state for the recent list is designed in the same column so the layout does not jump.
- Verified with `flutter analyze` (clean) and widget tests at 320, 390 and 430 px widths (no overflow, tab switching works).
