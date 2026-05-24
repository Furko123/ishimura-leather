# Ishimura Leather — Site Wireframes

## Design Principles Applied
- **Palette**: Forest green (#06402b → #1a4525 → #074e07) + cream (#c9c4b8) — RETAINED
- **Structure**: Vertical narrative scrolling (Aimoriyama-inspired) — sections breathe with generous whitespace
- **Typography**: Noto Serif JP + elegant serif secondary, large hierarchy, bilateral JP/EN
- **Motion**: CSS-only — page-load reveals with `animation-delay`, hover transitions, focus states. No JavaScript.
- **Aesthetic**: Purposeful minimalism — let the craft story speak

---

## PAGE: index.html (HOME)

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│  [STICKY HEADER]                                               │
│  Logo/Brand left | Nav links centered | Lang selector right   │
│  ─────────────────────────────────────────────────────────────  │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│                                                                 │
│              [HERO SECTION — FULL VIEWPORT]                    │
│                                                                 │
│              [LARGE H1 — Leather, slowly]                      │
│              [Lede paragraph — breathing room]                 │
│                                                                 │
│              [ATMOSPHERIC BACKGROUND]                          │
│              [Subtle gradient + texture overlay]                │
│                                                                 │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [VERTICAL SPACING]                                            │
│                                                                 │
│  [SECTION: Philosophy]                                         │
│  [Eyebrow label]                                               │
│  [Large H2]                                                    │
│  [Paragraph — max-width 60ch]                                  │
│                                                                 │
│  [VERTICAL SPACING]                                            │
│                                                                 │
│  [GRID: 4 FEATURE CARDS — 2 per row on desktop]               │
│  Each:                                                         │
│    [H3 — Small caps label]                                     │
│    [Paragraph]                                                 │
│    [Subtle underline on hover]                                 │
│                                                                 │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [VERTICAL SPACING]                                            │
│                                                                 │
│  [SECTION: Featured Pieces]                                    │
│  [Eyebrow label]                                               │
│  [Large H2]                                                    │
│                                                                 │
│  [VERTICAL SPACING]                                            │
│                                                                 │
│  [IMAGE GRID: 3 product imagery placeholders]                  │
│  Each: [Leather texture swatch or atmospheric mood]            │
│         [No product photos yet]                                 │
│         [Subtle scale on hover]                                │
│                                                                 │
│  [TEXT BELOW IMAGES — Product names & brief descriptions]      │
│                                                                 │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [FOOTER]                                                      │
│  [Copyright] [Locations] [Year Founded]                        │
│  [Minimal, aligned center]                                     │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘

NAVIGATION APPROACH:
- Horizontal top nav (clean, uncluttered)
- Breadcrumb or active page highlight
- Bilingual selector (JP/EN) — top right
- No side drawer on desktop; full-width content

MOTION MOMENTS:
- Hero H1: fade-in + slight slide on load (staggered)
- Section headlines: CSS `@keyframes` fade-in on page load (staggered via `animation-delay`)
- Feature cards: subtle lift on hover
- Links: soft underline animation
```

---

## PAGE: about.html

```
┌─────────────────────────────────────────────────────────────────┐
│                           [HEADER]                             │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [HERO: Smaller than home, more intimate]                      │
│  [H1 — "A small bench"]                                        │
│  [Lede paragraph]                                              │
│                                                                 │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [VERTICAL SPACING]                                            │
│                                                                 │
│  [TWO-COLUMN SECTION: "The Maker"]                             │
│  Left:                                                         │
│    [Eyebrow]                                                   │
│    [H2 — Name]                                                 │
│    [Biography paragraph — 60ch max-width]                      │
│    [Secondary paragraph]                                       │
│                                                                 │
│  Right:                                                        │
│    [PLACEHOLDER IMAGE — aspect 4:5]                           │
│    [Atmospheric gradient + texture]                            │
│    [No photo needed for wireframe]                             │
│                                                                 │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [VERTICAL SPACING]                                            │
│                                                                 │
│  [SECTION: "How a Piece is Made"]                              │
│  [Eyebrow + H2]                                                │
│  [Lede paragraph]                                              │
│                                                                 │
│  [VERTICAL SPACING]                                            │
│                                                                 │
│  [GRID: 4-STEP PROCESS]                                        │
│  Each step card:                                               │
│    [Number · Step Name]                                        │
│    [Description paragraph]                                     │
│    [Subtle visual divider between steps]                        │
│                                                                 │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [VERTICAL SPACING]                                            │
│                                                                 │
│  [SECTION: "Two Rooms"]                                        │
│  [Eyebrow + H2]                                                │
│  [Paragraph — locations, visiting info]                        │
│                                                                 │
│  [FOOTER]                                                      │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘

LAYOUT NOTES:
- Two-column switches to single-column on tablet/mobile
- Process steps stack vertically on narrow screens
- Strong visual hierarchy through generous top margin
```

---

## PAGE: products.html

```
┌─────────────────────────────────────────────────────────────────┐
│                           [HEADER]                             │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [HERO: Product collection intro]                              │
│  [H1 — "The Collection"]                                       │
│  [Lede — philosophy of pieces]                                 │
│                                                                 │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [VERTICAL SPACING]                                            │
│                                                                 │
│  [SECTION: Product Grid]                                       │
│                                                                 │
│  [GRID: 3-4 columns on desktop, responsive down]               │
│                                                                 │
│  Each product card:                                            │
│    ┌─────────────────────────┐                                 │
│    │                         │                                 │
│    │  [ATMOSPHERIC SWATCH]   │  (4:5 aspect ratio)             │
│    │  (Leather gradient)     │                                 │
│    │  [Subtle hover scale]   │                                 │
│    │                         │                                 │
│    ├─────────────────────────┤                                 │
│    │ [Product Name — H3]     │                                 │
│    │ [Type label — small caps]│                                │
│    │ [Brief description]     │                                 │
│    │ [Price]                 │                                 │
│    │ [Availability note]     │                                 │
│    └─────────────────────────┘                                 │
│                                                                 │
│  [VERTICAL SPACING BETWEEN ROWS]                               │
│                                                                 │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [NOTE SECTION — Ethical info, production timeline, materials] │
│  [Small text, border accent]                                   │
│                                                                 │
│  [FOOTER]                                                      │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘

DESIGN NOTES:
- No product photos yet (user specified no mock images)
- Leather color swatches + atmospheric gradients evoke material
- Cards remain consistent, hover effects minimal but clear
- Typography leads; visuals support
```

---

## PAGE: contact.html

```
┌─────────────────────────────────────────────────────────────────┐
│                           [HEADER]                             │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [HERO: Contact intro]                                         │
│  [H1 — "Get in Touch"]                                         │
│  [Brief lede]                                                  │
│                                                                 │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [VERTICAL SPACING]                                            │
│                                                                 │
│  [TWO-COLUMN]                                                  │
│                                                                 │
│  Left column:                                                  │
│    [FORM]                                                      │
│    [Name input — underline style, minimal]                     │
│    [Email input]                                               │
│    [Message textarea]                                          │
│    [Send button — border outline, hover fill]                  │
│                                                                 │
│  Right column:                                                 │
│    [ADDRESS SECTION]                                           │
│    [Location label]                                            │
│    [Address text]                                              │
│                                                                 │
│    [EMAIL SECTION]                                             │
│    [Email label]                                               │
│    [Email link]                                                │
│                                                                 │
│    [HOURS SECTION]                                             │
│    [Hours label]                                               │
│    [Hours text]                                                │
│                                                                 │
│    [VISIT NOTE]                                                │
│    [Small text about visits by appointment]                    │
│                                                                 │
│                                                                 │
│  [FOOTER]                                                      │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘

FORM DESIGN:
- Minimal aesthetic — underlines only, no boxes
- Focus states: underline brightens, text glows softly
- Button: border → fill on hover
- No required asterisks (assume all fields optional in HTML)
- mailto: fallback for pure HTML/CSS
```

---

## PAGE: impressum.html

```
┌─────────────────────────────────────────────────────────────────┐
│                           [HEADER]                             │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [Small hero or no hero — just title]                          │
│  [H1 — "Legal Information"]                                    │
│                                                                 │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  [VERTICAL SPACING]                                            │
│                                                                 │
│  [DEFINITION LIST]                                             │
│                                                                 │
│  [Owner information]                                           │
│  [Address]                                                     │
│  [Phone]                                                       │
│  [Email]                                                       │
│  [VAT/Registry info]                                           │
│  [Liability disclaimer]                                        │
│  [Copyright notice]                                            │
│                                                                 │
│  [Minimal styling — left-aligned, generous line-height]        │
│                                                                 │
│  [FOOTER]                                                      │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘

TYPOGRAPHY:
- Small but readable
- Definition-list structure (dt = label, dd = value)
- No visual clutter
```

---

## SHARED ELEMENTS

### Header/Navigation
```
┌─────────────────────────────────────────────────────────────────┐
│ [BRAND] [SPACING] [Nav: Home | About | Products | Contact | Impressum] [SPACING] [JP/EN] │
│ ─────────────────────────────────────────────────────────────────────────────────────────── │
│ [Sticky or scroll → hide on scroll down, reveal on up]        │
│ [Minimal elevation, subtle shadow]                            │
│ [Height: ~60–70px]                                            │
└─────────────────────────────────────────────────────────────────┘
```

### Footer
```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│                      [Minimal footer]                          │
│                 © Ishimura Leather                             │
│                 Kyoto · Berlin                                 │
│                 est. 2014                                      │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## DESIGN SYSTEM SPECS (To Be Applied)

### Colors
- **Primary Forest**: `#06402b` (deep), `#1a4525` (mid), `#2d5a3a` (light)
- **Neutrals**: `#c9c4b8` (cream text), `#e8e2d0` (light), `#0a0805` (near-black)
- **Accent**: `#8b6f47` (warm leather tan) for highlights
- **Shadows**: `rgba(0,0,0,0.35)` for depth

### Typography
- **Primary**: Noto Serif JP (400, 600, 700) — all headlines, brand
- **Secondary**: Elegant serif (Cormorant Garamond, Playfair, or similar) — italics, leads
- **Body**: Noto Serif JP 400, line-height 1.6–1.7

### Spacing
- **Unit**: 1rem base
- **Scale**: 0.5rem, 1rem, 1.5rem, 2.5rem, 4rem, 6rem
- **Section padding**: 4–6rem vertical, 3–5rem horizontal

### Motion
- **Transitions**: 0.25s ease for hover states
- **Page-load reveals**: CSS `@keyframes` fade + translateY, staggered via `animation-delay` (no JS)
- **Page load**: Staggered reveals (animation-delay 0.1s per element)

### Breakpoints
- **Desktop**: 1200px+
- **Tablet**: 768–1199px
- **Mobile**: <768px
- **Hamburger menu threshold**: 768px (if nav needed, but wireframe shows horizontal nav)

---

## AESTHETIC GOALS (Anti-AI-Slop Directive)

✅ **DO:**
- Use Noto Serif JP as primary (distinctive for Japanese artisan brand)
- Create atmosphere through layered gradients (not flat colors)
- Generous whitespace — sections *breathe*
- Bilingual layout (JP/EN) as core feature, not afterthought
- Motion reserved for high-impact moments (page load staggered reveals, hover, focus) — all CSS
- Minimal visual clutter — let content dominate
- Context-specific design (leather craft → warm tones, hand-stitched aesthetic)

❌ **DON'T:**
- Overuse generic sans-serif (no Inter, Roboto, Arial)
- Flat colors without depth
- Too many hover effects scattered throughout
- Random placeholder images (user specified no mocks)
- Clichéd layout patterns
- Purple gradients or trendy AI aesthetic

---

## NEXT STEPS

1. ✅ Wireframes complete (this document)
2. Build comprehensive design system in CSS (color vars, typography scale, spacing, motion)
3. Implement index.html with hero, sections, minimal nav
4. Implement about.html with two-column layout and process steps
5. Implement products.html with atmospheric card grid
6. Implement contact.html with minimalist form
7. Implement impressum.html
8. Polish responsiveness, test motion, refine typography
