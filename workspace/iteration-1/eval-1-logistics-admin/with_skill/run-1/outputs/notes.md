# Shipments admin panel — design notes

**One-line summary:** Archetype: Soft Bento · Palette: Carbon Frost · Headings: Geist / Body + Captions: Inter / Data: Geist Mono · Elevation: Gentle Lift · Layout: Sidebar + Content (pattern A), compact density.

## Archetype: Soft Bento
The archetype index is mostly marketing-oriented; Soft Bento is the one whose structural idea (discrete rounded tiles on a visible ground, separated by gap rather than borders, one inverse tile per cluster, elevation only on nested elements) maps directly onto an admin dashboard: the sidebar, the four KPI metrics and the shipments table are each a tile. The archetype's rule of "one inverse tile per cluster" gave the page its single focal point: the leading "In transit" metric is the dark block, with the archetype-sanctioned sparkline as its one nested visual. Blueprint Technical was the runner-up but its sharp corners and wireframe-as-content role do not fit a data table screen.

## Palette: Carbon Frost
Chosen from the archetype's two curated palettes. Fern Journal's green accent collides with the success status colour, which matters on a screen whose main signal is delivery status. Carbon Frost is neutral (white ground, `#F7F8FA` tiles, near-black inverse) with a restrained blue accent and muted status colours (`#5DA876` / `#D4956A` / `#C96B6B` / `#4A9FD8`), so status badges read as information rather than alarm. Accent use is held to the primary button, the sparkline, and the "In transit" status dot (status.info shares the accent hue). Active nav is shown by a white fill + `shadow.sm`, not by accent.

## Fonts
Started from the "Soft Bento - Carbon Frost" preset (Geist / Inter / Funnel Sans / Geist Mono) and dropped Funnel Sans so the page stays within the fonts rule of at most two families plus one mono: Geist for the page title and brand, Inter for body, navigation and captions, Geist Mono for every figure (KPI values, deltas, shipment IDs, ETAs, counts). Body 14 px, captions 12 px, KPI values 32 px, title 28 px.

## Elevation: Gentle Lift
The preset paired with Carbon Frost in the archetype table. Only `shadow.sm` is used, and only on nested elements inside tiles (the search field, filter chips, the active nav item, the user card, the table container); tiles themselves carry no shadow, per the archetype's token map.

## Shape
`rounded.2xl` (16 px) on tiles, `rounded.xl` (12 px) on the nested table container and user card, `rounded.lg` (8 px) on nav items and pager buttons, `rounded.full` on buttons, chips, badges and the avatar. 8-based spacing scale (4/8/12/16/24/32/40).

## Deliberate deviations and contrast fixes
- Table rows use 1 px `border.subtle` hairlines. The archetype says whitespace is the sole separator, but row hairlines are functional in a data table, not decorative.
- Status colours are used only on dots and badge tints. Small text (12 px deltas, late-ETA subline) is set in `foreground.primary` with the status colour on a direction glyph, because the palette's status colours fall below 4.5:1 on the tile surface at that size.
- Tinted "Delayed" badge and inverse-tile text tints are derived with `color-mix()` from tokens rather than hard-coded hex.
- The table container includes a hidden empty state in the same container so the layout does not jump; below 860 px the table converts to stacked rows with `data-label` captions and the sidebar becomes a top tile with wrapped navigation.
