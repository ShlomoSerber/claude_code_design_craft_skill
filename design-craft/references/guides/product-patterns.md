# Product UI Patterns

Structural defaults for functional product UI (dashboards, admin panels, CRMs, editors). Use with `web-app.md`. Numbers are starting points, not laws; keep them consistent within one product.

## Screen layout patterns

**A. Sidebar + Content (dashboard)**
```
┌──────────┬────────────────────────────────┐
│ Sidebar  │     Main content area          │
│  ~280px  │     fills remaining width      │
└──────────┴────────────────────────────────┘
```
Sidebar: logo/brand at top, navigation items (12×16 padding, no gap between items, active item highlighted by fill, not by a left bar and a fill and a bold label all at once), user/settings pinned at bottom. Main: 32 px padding, 24 px gap between sections.

**B. Header + Content**
```
┌────────────────────────────────────────────┐
│              Header bar (~64px)            │
├────────────────────────────────────────────┤
│              Content area                  │
└────────────────────────────────────────────┘
```
Header: 0×24 padding, items vertically centered, brand left, actions right, a 1 px `border.subtle` bottom line. Content: 32 px padding, 24 px gap.

**C. Two-Column**
```
┌─────────────────────┬─────────────┐
│    Main (flexible)  │ Side ~360px │
└─────────────────────┴─────────────┘
```
Main column flexible, side column fixed, 24 px gap. Side column holds metadata, filters or secondary actions; never a second primary action.

**D. Card Grid**
Equal-width cards, 16–24 px gap. Every card carries one primary idea. On mobile the grid stacks to one column.

## Common compositions

- **Page header**: breadcrumbs or title on the left, actions on the right, vertically centered. One primary button at most.
- **Form**: vertical stack, 16 px gap. Related short fields (first/last name) share a row; long fields span full width. Submit right-aligned.
- **Metric cards**: label (14 px, `foreground.secondary`) above value (32 px, weight 600, `foreground.primary`), 4 px gap, 24 px padding. Optional delta in `status.*` color. 3–4 per row.
- **Table**: header row bold, fixed column widths, rows of fixed height. Keep 4–7 columns; move the rest to a detail view. Right-align numbers. On mobile, tables become cards.
- **Empty / loading / error states**: same container as the loaded state, so the layout does not jump.

## Spacing reference

| Context | Gap | Padding |
|---------|-----|---------|
| Screen sections | 24–32 | — |
| Card grid | 16–24 | — |
| Form fields (vertical) | 16 | — |
| Form row (horizontal) | 16 | — |
| Button groups | 12 | — |
| Inside cards | — | 24 |
| Inside buttons | — | 10 × 16 |
| Inside inputs | — | 8 × 16 |
| Page content area | — | 32 |
| Sidebar items | 0 | 12 × 16 |

Pick one spacing scale (4 or 8 based) and stay on it. Mixed arbitrary values (13, 18, 27) are the fastest way to make a layout feel off.

## Button hierarchy

One primary action per section. Rough priority order:

| Priority | Variant | Often used for |
|----------|---------|---------|
| 1 | Primary | Main action (Save, Submit, Create) |
| 2 | Secondary | Alternative actions |
| 3 | Outline | Tertiary, Cancel, Back |
| 4 | Ghost | Inline actions, navigation |
| 5 | Destructive | Delete, Remove |

Alignment conventions: cards and modals right-align actions; forms right-align submit; toolbars put primary left and secondary right; Cancel sits left of a destructive button.

## Principles

- **Visual hierarchy**: one focal point per section; use size, weight and color for importance; the primary action is visually dominant.
- **Alignment**: align to an implicit grid; consistent edge alignment inside containers; no orphaned floating elements.
- **Spacing**: values come from the scale; consistent vertical rhythm between sections.
- **Color**: tokens, never ad-hoc hex; semantic colors only for their meaning (error for errors); check contrast.
- **Density**: breathing room; cards hold one idea; tables keep a reasonable column count.
