# Decorative imagery specs

Each spec describes a decorative visual as construction instructions (composition, colors sourced from palette tokens, placement). Use them when an archetype's Decoration Role calls for imagery. Where a spec says "photograph", use a real photo or a clearly labeled placeholder; never a distorted or stretched image.

## Contents

- [Abstract Chromatic Gradients](#abstract-chromatic-gradients)
- [Aerial Photography](#aerial-photography)
- [Architectural Hand Illustrations](#architectural-hand-illustrations)
- [Atmospheric Landscape Photography](#atmospheric-landscape-photography)
- [Candid Lifestyle Photography](#candid-lifestyle-photography)
- [Cartographic Grid Overlay](#cartographic-grid-overlay)
- [Cinematic Grain Photography](#cinematic-grain-photography)
- [Confetti Sparkle Marks](#confetti-sparkle-marks)
- [Editorial Portrait Photography](#editorial-portrait-photography)
- [Fluid Ribbon Gradients](#fluid-ribbon-gradients)
- [Heritage Detail Photography](#heritage-detail-photography)
- [Hospitality Interior Photography](#hospitality-interior-photography)
- [Landscape Photography](#landscape-photography)
- [Lifestyle Workspace Photography](#lifestyle-workspace-photography)
- [Liquid Glass Swirls](#liquid-glass-swirls)
- [Mesh Cloud Gradients](#mesh-cloud-gradients)
- [Neon Streak Overlay](#neon-streak-overlay)
- [Ornamental Brand Icon](#ornamental-brand-icon)
- [Painterly Scene Illustration](#painterly-scene-illustration)
- [Pixel Art Accent](#pixel-art-accent)
- [Pixel Grid Illustration](#pixel-grid-illustration)
- [Prismatic Cell Overlay](#prismatic-cell-overlay)
- [Product Still Photography](#product-still-photography)
- [Storybook Character Illustrations](#storybook-character-illustrations)
- [Technical Construction Overlay](#technical-construction-overlay)

## Abstract Chromatic Gradients

Large-scale, flowing organic forms with curved surfaces that fold and sweep across the composition. Colors transition across 3-5 accent tones, with each surface holding a distinct hue while softly blending into adjacent forms at overlap zones. The composition is always significantly larger than its container, with forms bleeding off multiple edges to imply infinite extension.

Fill specification: Construct a multi-stop gradient with 3–5 color stops sourced from `[accent.primary]`, `[accent.secondary]`, `[accent.tertiary]`, and up to two additional accent tokens. Distribute stops at irregular intervals (not evenly spaced) across the gradient range. Use curved mesh control points (minimum 4) positioned organically — avoid grid-aligned placement — so color regions form soft, folding surfaces rather than linear bands. Set each stop to 90–100% opacity. Blending between adjacent stops should use a smooth ease (cubic interpolation) with no hard edges. No noise, no texture overlay.

## Aerial Photography

Large-scale aerial photography showing terrain, coastlines, cities, or water systems from above. Compositions use strong geometry, visible environmental texture, and negative space sufficient for overlaid UI or typography. Framing is structural rather than scenic, with a survey-like top-down or high-oblique perspective.

When sourcing: Search "aerial photography," "drone photography," "top-down landscape," "bird's eye view." Filter for top-down or high-oblique angle. Subject keywords: terrain patterns, coastline geometry, urban grid, river delta, agricultural fields, ocean texture. Framing: full-bleed, wide aspect ratio, no visible horizon unless high-oblique. Composition: strong geometric structure, at least 30% negative or low-detail area for text overlay, single dominant color field or repeating pattern. Exclude: close-up shots, people as main subject, text overlays, watermarks, low-altitude eye-level perspective, heavy post-processing filters.

## Architectural Hand Illustrations

Line illustrations depicting architectural subjects such as building exteriors, interior spaces, or structural details. Rendered with delicate, varied-weight linework and minimal shading. Compositions are editorially framed with a single focal subject. No fills, no color, no background texture.

When generating: "hand-drawn line illustration of an architectural subject, fine ink linework with varied stroke weight, minimal crosshatch shading, single building exterior or interior detail as focal subject, editorial composition with balanced negative space, white or transparent background, no color fill, no text, no labels, no blueprint grid, high resolution"

## Atmospheric Landscape Photography

Landscape photography with visible atmosphere such as fog, mist, overcast light, or distant haze. Deep spatial layering with soft contrast transitions and foreground-to-background separation achieved through atmospheric perspective. Compositions are expansive enough to carry a hero section without becoming busy.

When sourcing: Search "foggy landscape," "misty mountains," "haze valley," "overcast terrain," "atmospheric landscape." Filter for wide or ultra-wide compositions. Subject keywords: rolling hills in fog, forest mist, lake haze, mountain layers, coastal fog, open moorland. Framing: wide horizontal format, horizon placed in upper or lower third, at least two visible depth planes. Composition: layered recession from foreground to background, soft tonal gradients, large areas of low-detail atmosphere usable for overlay. Exclude: sunny clear-sky scenes, blue-sky-dominant images, close-ups, macro, people as main subject, saturated sunset/sunrise color, text overlays.

## Candid Lifestyle Photography

Warm, naturally-lit photographs of people engaged in everyday activities — reading, conversing, sharing moments. Subjects are shot at close to mid range with shallow to moderate depth of field. Lighting is soft and directional, creating warmth without harsh shadows. Color temperature skews warm. Compositions are candid and unposed, capturing genuine interactions. Images fill their container edge-to-edge with no inset.

When sourcing: Search "candid family moment," "warm lifestyle photography," "natural light portrait interaction," "authentic daily life photography." Filter for warm color temperature, soft directional lighting, genuine unposed interactions. Subject keywords: parent-child, couple, friends, reading together, sharing food, casual conversation. Framing: close to mid range, horizontal orientation preferred, subject fills 40-70% of frame. Composition: shallow depth of field, warm tones, visible but not harsh directional light. Exclude: studio lighting, posed/stock-style staging, corporate settings, cold color temperature, heavy post-processing, fashion photography.

## Cartographic Grid Overlay

A secondary layer of thin ruled lines arranged in a uniform grid or contour pattern, applied on top of primary imagery. The overlay adds analytical, map-like structure to the composition beneath without competing with foreground content. Lines are evenly spaced and consistent in weight, producing a flat technical register rather than a decorative one.

Generation prompt: "Thin grid lines and subtle contour marks on a fully transparent background. Line color `[accent.primary]` at 5–15% opacity. Stroke weight 0.5–1px. Uniform spacing at 20–40px intervals. Sparse and precise layout with clean intersections. No text, no labels, no filled shapes, no decorative elements. Output as a seamless overlay layer."

## Cinematic Grain Photography

Blurred, desaturated photography with visible film grain used as atmospheric background texture rather than focal imagery. Compositions are intentionally soft-focused with muted color grading, creating a cinematic depth-of-field effect. The imagery serves as tonal surface treatment — setting mood without competing for attention.

When sourcing: Search "cinematic photography grain," "blurred background texture," "desaturated film photography," "bokeh atmospheric photo." Filter for low-saturation, soft-focus, or intentionally blurred compositions. Subject keywords: out-of-focus urban scenes, abstract light bokeh, soft interior ambience, muted color palette, film grain texture. Framing: full-bleed, wide aspect ratio, no sharp focal point. Composition: uniform tonal range, no high-contrast edges, at least 80% soft or out-of-focus area, single dominant color temperature. Exclude: sharp-focused subjects, high-saturation images, text overlays, watermarks, heavily stylized filters, identifiable faces or products.

## Confetti Sparkle Marks

Small scattered accent marks including four-point stars, circles, short strokes, dots, and confetti flecks. Distributed at low density with irregular spacing. Each mark is a simple flat shape with no gradients or outlines. Functions as decorative punctuation, not as a background pattern.

When generating: "small scattered accent marks, mix of four-point stars, circles, dots, and confetti flecks, sparse irregular placement across the frame, flat shapes with no gradients, colors limited to [accent.primary] and [accent.secondary], transparent background, no text, no overlapping marks, no dense clusters"

## Editorial Portrait Photography

Portrait photography with editorial or magazine-level composition. Strong framing with clear subject separation from background and controlled directional lighting. Subject is typically framed from mid-chest up, centered or rule-of-thirds positioned. Enough simplicity around the subject for overlay use.

When sourcing: Search "editorial portrait," "magazine portrait," "studio portrait natural light," "portrait clean background." Filter for single-subject, mid-chest-up or tighter framing. Subject keywords: one person, direct or three-quarter face angle, confident posture, neutral or minimal wardrobe. Framing: vertical or square crop preferred, subject occupies 40-70% of frame, shallow to mid depth of field. Composition: clean or softly blurred background, directional lighting with defined shadow, minimal props, negative space on at least one side of subject. Exclude: casual snapshots, busy or cluttered backgrounds, group photos, selfie angle, heavy color filters, stock-photo-style forced smiles, text overlays.

## Fluid Ribbon Gradients

Large-scale, sweeping ribbon-like forms rendered as layered translucent color bands that curve and arc in smooth, continuous motions. Individual bands remain visually distinct while dissolving softly into one another at their edges. The ribbon assembly is always rendered at a scale significantly larger than its container, with forms bleeding off multiple edges. Always sits behind all text and UI elements.

Generation prompt: "Sweeping ribbon-like translucent color bands curving and arcing in smooth continuous motions. Use 3–4 accent colors: `[accent.primary]`, `[accent.secondary]`, `[accent.tertiary]`, and optionally a fourth accent tone. Bands overlap with soft dissolving edges where they meet. Each ribbon at 70–90% opacity. Large scale composition cropped at the frame edges. Smooth arcs, no sharp corners. No text, no objects, no noise, no texture overlay. Output as a background fill layer."

## Heritage Detail Photography

Photography of architectural details, natural materials, or built-environment surfaces that show construction history and craft. Subjects include stonework, joinery, patina on metal, woven textiles, or aged wood grain. Natural directional lighting, shallow-to-mid depth of field with soft background separation, full-bleed or large-scale compositions. The image functions as a texture-rich surface rather than an informational subject.

When sourcing: Search "architectural detail," "stone texture close-up," "wood grain detail," "metal patina," "handcraft texture," "heritage material," "artisan surface." Filter for detail or mid-range framing, natural light. Subject keywords: stonework, brick, timber joinery, wrought iron, hand-woven textile, ceramic glaze, aged plaster, leather, terracotta. Framing: tight to mid-range, filling the frame with material surface, shallow or mid depth of field. Composition: single material or surface as dominant subject, directional natural light creating shadow and relief, organic irregularity visible, full-bleed capable. Exclude: modern interiors, digital screens, plastic surfaces, people as main subject, machine-uniform textures, text overlays, heavily styled flat-lay arrangements.

## Hospitality Interior Photography

Architectural interior photography of hospitality spaces such as lounges, hotel lobbies, restaurants, or communal environments. Material variety and spatial depth with a composed, design-forward point of view. Framing shows at least two spatial planes (foreground surface and background architecture). Wide or medium-wide focal lengths preferred.

When sourcing: Search "hotel lobby interior," "restaurant interior design," "lounge architecture," "boutique hotel interior," "hospitality space." Filter for wide-angle or medium-wide compositions, architectural framing. Subject keywords: lobby seating area, dining room, bar interior, hotel corridor, lounge with furniture, reception area, communal space. Framing: wide or medium-wide angle, camera at standing or seated eye level, straight verticals (corrected perspective). Composition: at least two depth planes visible (foreground furniture/surface and background wall/window), multiple materials in frame (wood, stone, fabric, glass, metal), directional or ambient window light. Exclude: residential interiors, close-up product shots, people as main subject, empty featureless rooms, overhead flat-lay, text overlays, real estate listing-style wide-angle distortion.

## Landscape Photography

Wide landscape photography used as a large-format stage image. Strong horizon control with clear foreground-to-background depth separation. Expansive composition with a defined horizon line in the upper or lower third, leaving usable space for UI or typography.

When sourcing: Search "wide landscape," "scenic vista," "panoramic landscape," "horizon landscape," "open terrain." Filter for horizontal format, visible horizon line. Subject keywords: mountain range, open field, lake shore, desert expanse, rolling hills, coastline, prairie. Framing: wide horizontal, horizon placed in upper or lower third of frame, foreground element anchoring the bottom edge. Composition: three-plane depth (foreground, midground, background), strong horizon line, at least 30% of frame as sky or ground usable for text overlay, balanced left-right weight. Exclude: aerial/drone perspective, portrait orientation, urban scenes, people as main subject, heavy HDR processing, text overlays, night sky or astrophotography.

## Lifestyle Workspace Photography

Photography of people or spaces in a creative or professional work setting. Natural light with tactile materials (wood, paper, fabric, ceramic) and candid editorial framing that includes human presence or evidence of activity. The composition shows a real environment with enough depth and negative space to function as a background or hero image.

When sourcing: Search "creative workspace," "studio environment people," "office natural light," "designer at work," "professional workspace lifestyle." Filter for natural light, candid or semi-candid framing. Subject keywords: person at desk, hands working on craft, laptop and notebook, studio tools, workshop bench, co-working space, architect at drafting table. Framing: medium to medium-wide, eye-level or slightly above, subject in context of environment. Composition: human figure or hands-in-activity as focal point, surrounding workspace visible, natural window light as primary source, tactile materials in frame, enough depth or soft-focus area for text overlay. Exclude: posed corporate headshots, empty rooms without activity evidence, pure product shots on white background, overhead flat-lay, text overlays, stock-photo-style thumbs-up or handshake poses.

## Liquid Glass Swirls

Large-scale, fluid organic forms with curved surfaces that twist and loop into tight swirl formations. Colors use `[accent.primary]` and `[accent.secondary]` with deep shadow regions and bright highlight regions creating strong volumetric contrast. The composition is always larger than its container, with forms bleeding off edges.

Fill specification: Construct a mesh gradient with 5–7 color stops. Use lighter tints of `[accent.primary]` and `[accent.secondary]` for highlight regions and darker shades of the same tokens for shadow regions — the high-contrast volumetric effect comes from the stop color values themselves. Place 3–5 mesh control points with tight curved distortion, warping interpolation paths into spiral/swirl trajectories rather than smooth radial falloff. Each control point should pull color regions into looping forms with a minimum curvature radius of ~5% of the container width. Set all stops to 100% opacity. Layer a second fill using `[accent.primary]` at 15–25% opacity to deepen shadow zones. No texture overlay.

## Mesh Cloud Gradients

Large-scale, organic mesh gradients that blend `[accent.primary]` and `[accent.secondary]` into soft, diffused formations with variable density. The gradients are always larger than their container, bleeding off edges to read as a slice of a larger field. Maintains sufficient contrast with `[foreground.primary]` to never compete with text or UI elements.

Fill specification: Construct a mesh gradient with 4–6 control points distributed in an irregular, non-grid pattern across the fill area. Assign each control point either `[accent.primary]` or `[accent.secondary]`, alternating to avoid clustering of the same token. Set the interpolation radius for each control point to 40–60% of the container width to produce wide, diffused blending zones (cloud-like topology with no sharp color boundaries). Set all control points to 85–100% opacity. No noise, no texture overlay.

## Neon Streak Overlay

Horizontal blurred streaks of light that cross the composition at irregular vertical positions and angles (5-15° from horizontal). Each streak carries a single accent hue at 40-70% opacity with a wide gaussian blur (30-60px radius). Streaks vary in length (40-100% of container width) and thickness (2-8px before blur). They are always positioned behind content layers, never intersecting text or interactive elements. 3-6 streaks per composition.

Fill specification: Draw 3-6 horizontal lines at irregular vertical positions across the composition. Assign each line a color from `[accent.primary]`, `[accent.secondary]`, or `[accent.tertiary]`. Set stroke width to 2-8px. Apply gaussian blur of 30-60px radius. Set opacity to 40-70%. Rotate each streak 5-15° from horizontal with random direction. Streaks should not cluster — minimum 80px vertical separation between streak centers. No texture overlay, no noise.

## Ornamental Brand Icon

A single symmetrical emblem used as a decorative section marker or brand accent. Constructed from geometric or heritage-inspired forms such as compass arcs, mirrored strokes, or radial patterns. Minimal detail, readable at small scale. Rendered as a monochrome mark or stroke outline.

When generating: "single symmetrical ornamental emblem, geometric heritage-inspired form, constructed from compass arcs and mirrored strokes, minimal detail, monochrome fill using [accent.primary], centered composition on transparent background, no text, no additional icons, no gradients, scalable to small sizes"

## Painterly Scene Illustration

A detailed, full-bleed digital painting depicting an environmental scene with human figures, natural elements (trees, flowers, water), and architectural or urban elements in the background. The painting style is rich and layered with visible brushwork, soft color gradients between elements, and atmospheric perspective (background elements fade and blur). Figures are rendered at mid-distance — recognizable but not portrait-detailed. The scene occupies the full container and bleeds off all edges.

When generating: "A wide-format digital painting of an outdoor scene — a park or garden setting with [surface elements: grass, paths, trees, flowers] in the foreground, human figures at mid-distance engaged in casual activities [walking, reading, conversing], and [urban/architectural elements: buildings, bridges, skyline] visible in the soft-focus background. Color palette uses `[accent.primary]` for shadow tones, `[accent.secondary]` for vegetation and highlights, `[accent.tertiary]` for sky and atmospheric glow. Painterly brushwork, atmospheric perspective, warm directional lighting from one side. No text, no UI elements, no sharp digital edges."

## Pixel Art Accent

A single object or motif rendered in a deliberate 8-bit pixel-art style — each "pixel" is a visible square. The subject is a natural or organic form (flower, plant, simple object) rendered with a limited color palette of 4-8 colors. Sized as a secondary visual element (~20-30% of container width), positioned adjacent to text as a visual anchor. Transparent background. No anti-aliasing — hard pixel edges only.

When generating: "A single [natural object: flower, plant, fruit, leaf] rendered in pixel art style on a transparent background. Use an 8x8 or 16x16 pixel grid per element. Color palette limited to 4-8 colors derived from `[accent.primary]`, `[accent.secondary]`, `[accent.tertiary]`, and their tints. Hard pixel edges, no anti-aliasing, no gradients within pixels. The object should be centered and clearly recognizable despite the low-resolution rendering style."

## Pixel Grid Illustration

Low-opacity geometric shapes rendered in a blocky, pixel-art style that fill the background of a saturated surface zone. Shapes include hearts, arrows, abstract forms, and simple geometric patterns. All shapes are constructed on a visible grid (each "pixel" being a small square). Rendered at 8-15% opacity in a single tone (typically `[foreground.inverse]`). The shapes are scattered irregularly but never overlap text or interactive elements.

When generating: "A set of simple pixel-art icons and geometric shapes on a transparent background, rendered in white at low opacity. Shapes include: small hearts, directional arrows, abstract cross patterns, simple star forms. Each shape is built from square pixels on an 8x8 or 16x16 grid. Scatter irregularly across a wide canvas with generous spacing. No gradients, no anti-aliasing, sharp pixel edges only."

## Prismatic Cell Overlay

Clusters of semi-transparent, rectangular shapes arranged in loose grid-like formations that flank or border the primary content zone. Each rectangle carries a distinct hue at 15-30% opacity, creating a layered, translucent effect. Rectangles vary in size but maintain consistent right angles. The clusters are always positioned at the lateral edges of the composition, never centered, and never overlap text or primary action elements.

Fill specification: Construct 8-15 rectangles per cluster in a loose grid arrangement. Assign each rectangle a color from `[accent.primary]`, `[accent.secondary]`, `[accent.tertiary]`, or tinted variants of `[surface.primary]`. Set opacity to 15-30% per rectangle. Rectangles should vary in width (40-120px) and height (20-80px) with 4-12px gaps. Position clusters at 0-10% from container edges, vertically centered within the primary content zone. No blur, no rotation, sharp corners only.

## Product Still Photography

Product objects arranged in a sculptural, balanced composition against a dark or neutral ground. Studio-controlled lighting creates selective highlights and soft shadows that emphasize form and material texture. Objects are shot from a slightly elevated angle with full depth of field. The arrangement fills the frame with deliberate negative space. Color temperature is neutral to warm. No lifestyle context — pure product focus.

When sourcing: Search "product still life photography," "studio product arrangement," "sculptural product composition," "dark background product photography." Filter for controlled studio lighting, deliberate composition, dark or neutral backgrounds. Subject keywords: supplements, capsules, objects, materials, texture. Framing: slightly elevated angle, full depth of field, centered or asymmetric composition filling 50-80% of frame. Composition: balanced arrangement of multiple objects, selective highlights, visible material texture, soft shadows on surface. Exclude: lifestyle context, human hands, bright backgrounds, flat lay, cluttered arrangement, harsh lighting.

## Storybook Character Illustrations

Character illustrations with simple rounded forms, uniform stroke weight, and visible paper or pencil texture. Figures use flat or lightly shaded fills in a limited color palette. Poses are simple and static. No background detail beyond the character and minimal ground reference.

When generating: "hand-drawn character illustration, simple rounded body shapes, uniform stroke weight, visible pencil or paper texture, flat color fills using [accent.primary] and [accent.secondary], simple static pose, single character centered in frame, transparent or flat background, no text, no props, no detailed environment"

## Technical Construction Overlay

A secondary layer of sparse geometric construction marks—arcs, measurement guide lines, and small annotation indicators—applied on top of primary imagery. The marks read as analytical augmentation rather than decoration, lending a study-like, diagrammatic quality to the composition beneath. Placement is intentional and uneven, concentrated away from areas occupied by text or interactive UI elements.

Generation prompt: "Thin geometric arcs and straight measurement guide lines with small annotation tick marks on a fully transparent background. Monochrome line color `[accent.primary]` at 10–20% opacity. Stroke weight under 1px. Sparse, asymmetric placement with generous empty space between marks. No text, no labels, no filled shapes, no heavy grids. Output as a seamless overlay layer."

