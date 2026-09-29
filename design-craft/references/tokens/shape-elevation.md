# Shape and elevation

## Radius scale (Basic Roundness)

| Token | px |
|---|---|
| `rounded.none` | 0 |
| `rounded.xs` | 2 |
| `rounded.sm` | 4 |
| `rounded.md` | 6 |
| `rounded.lg` | 8 |
| `rounded.xl` | 12 |
| `rounded.2xl` | 16 |
| `rounded.3xl` | 24 |
| `rounded.4xl` | 32 |
| `rounded.full` | 9999 |

`rounded.full` means a pill: use half the element height or 9999px.

## Elevation presets

Each preset defines `shadow.sm` through `shadow.xl` as layered shadows (offset x, offset y, blur, color with alpha). Pick one preset per design and never mix presets. Layered shadows read as physical light; a single hard shadow reads as cheap.

### Gentle Lift

| Token | Layers (x y blur color) | CSS |
|---|---|---|
| `shadow.sm` | 0 1 3 #0000000a | `box-shadow: 0px 1px 3px #0000000a` |
| `shadow.md` | 0 2 4 #00000008 ; 0 6 16 #0000000d | `box-shadow: 0px 2px 4px #00000008, 0px 6px 16px #0000000d` |
| `shadow.lg` | 0 4 6 #00000008 ; 0 16 40 #00000012 | `box-shadow: 0px 4px 6px #00000008, 0px 16px 40px #00000012` |
| `shadow.xl` | 0 8 12 #0000000a ; 0 28 72 #00000018 | `box-shadow: 0px 8px 12px #0000000a, 0px 28px 72px #00000018` |

### Sharp Depth

| Token | Layers (x y blur color) | CSS |
|---|---|---|
| `shadow.sm` | 0 1 2 #00000040 | `box-shadow: 0px 1px 2px #00000040` |
| `shadow.md` | 0 4 8 #00000080 | `box-shadow: 0px 4px 8px #00000080` |
| `shadow.lg` | 0 12 24 #000000B3 | `box-shadow: 0px 12px 24px #000000B3` |
| `shadow.xl` | 0 24 48 #000000E6 | `box-shadow: 0px 24px 48px #000000E6` |

### Soft Cloud

| Token | Layers (x y blur color) | CSS |
|---|---|---|
| `shadow.sm` | 0 1 2 #0000000a | `box-shadow: 0px 1px 2px #0000000a` |
| `shadow.md` | 0 1 3 #00000008 ; 0 4 12 #0000000a | `box-shadow: 0px 1px 3px #00000008, 0px 4px 12px #0000000a` |
| `shadow.lg` | 0 2 4 #00000008 ; 0 12 32 #0000000f | `box-shadow: 0px 2px 4px #00000008, 0px 12px 32px #0000000f` |
| `shadow.xl` | 0 4 8 #0000000a ; 0 24 64 #00000014 | `box-shadow: 0px 4px 8px #0000000a, 0px 24px 64px #00000014` |

### Soft Lift

| Token | Layers (x y blur color) | CSS |
|---|---|---|
| `shadow.sm` | 0 1 2 #0000000a | `box-shadow: 0px 1px 2px #0000000a` |
| `shadow.md` | 0 1 3 #00000008 ; 0 4 12 #0000000a | `box-shadow: 0px 1px 3px #00000008, 0px 4px 12px #0000000a` |
| `shadow.lg` | 0 1 3 #00000008 ; 0 8 24 #0000000a | `box-shadow: 0px 1px 3px #00000008, 0px 8px 24px #0000000a` |
| `shadow.xl` | 0 1 3 #00000008 ; 0 16 48 #0000000a | `box-shadow: 0px 1px 3px #00000008, 0px 16px 48px #0000000a` |

