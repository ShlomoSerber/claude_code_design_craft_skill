# Mobile App Screen Composition

Design mobile screens that feel modern, premium and easy to scan. Prioritize clarity, hierarchy and touch ergonomics.

## Layout Structure

Let the screen grow with its content; do not force the real device height when mocking. Build the chrome first (status bar, tab bar), then fill the content.

1. **Status Bar**: OS chrome (time, signal, battery). Reserve the safe area; never place app UI behind it.
2. **Content Wrapper**: all app content lives in one wrapper with consistent horizontal padding (16–20 px) applied once. Use gap-based vertical spacing between sections (24–32 px between major sections, 12–16 px between related items).
3. **Tab Bar** (optional): a bottom-anchored, capsule-ended bar for switching between 3–5 top-level destinations.

## Tab Bar

A bottom-anchored capsule bar (the iOS "liquid glass" look) works well as a default.

- **Bar**: floats inset from the screen edges (~16 px on the sides, ~12 px above the bottom), never flush. ~56 px tall, corner radius = half the height, ~6 px inner padding. Frosted-glass fill at ~70% opacity with a soft shadow.
- **Items**: icon (~22 px) above a label (10 px, sentence case), centered.
- **Selected**: accent-tinted icon and label on a soft capsule highlight, filled icon variant. Inactive: muted neutral, outlined icon.
- Keep the bar as the last item in the screen's vertical stack, and give that stack ~12 px bottom padding so the capsule clears the edge.

## Rules

- One primary intent per screen. Everything else is subordinate.
- The first 1–2 elements answer "where am I" and "what can I do here".
- Use the same title size on every screen; titles must look uniform app-wide.
- Keep key actions reachable in the lower half for one-handed use.
- Touch targets need comfortable hit areas: 44 px minimum.
- Body text 16 px minimum; captions no smaller than 12 px.
- Let the wrapper handle horizontal padding; do not add per-section padding.
- Use the wrapper's gap for spacing and bottom padding (same value as the gap) for trailing space. Never use spacer elements.
- On narrow screens, a wide multi-column table becomes a list of cards.
