// Developer CV — Typst edition
//
// Ported from the "Developer CV" LaTeX template (developercv.cls) by
// Jan Vorisek, based on a template by Jan Küster, modified for
// LaTeX Templates by Vel. MIT licensed — see license.txt.
//
// Build:  typst compile --font-path fonts cv.typ
// Watch:  typst watch   --font-path fonts cv.typ

#let fa-solid = "Font Awesome 6 Free Solid"
#let fa-brands = "Font Awesome 6 Brands"

#let accent = black

// FontAwesome codepoints used in the header.
#let fa = (
  location: "\u{f041}",
  phone: "\u{f095}",
  at: "\u{f1fa}",
  linkedin: "\u{f0e1}",
  github: "\u{f09b}",
)

// White text on a black rectangle, used for the name and section headings.
// The LaTeX original used \colorbox, whose padding is whatever the font's
// glyph boxes happen to give it, so the name and the section headings sat
// differently inside their boxes. Here the inset is explicit and shared.
//
// The box is sized from the font's ascender/descender metrics rather than
// from the glyphs actually present, so every box is the same height and
// tall diacritics — the acute in CIEŚLIK — are not clipped by the top edge.
#let boxed(body, size: 1em, inset: (x: 0.35em, y: 0.16em)) = box(
  fill: accent,
  inset: inset,
  text(
    fill: white,
    weight: "bold",
    size: size,
    top-edge: "ascender",
    bottom-edge: "descender",
    body,
  ),
)

// Section heading: uppercase, bold, in a black box.
#let cvsect(title) = block(
  above: 1.4em,
  below: 0.75em,
  boxed(upper(title)),
)

// An icon in a black square with text to its right, both vertically centred.
#let icon-line(glyph, body, font: fa-solid, size: 12pt) = {
  box(
    fill: accent,
    width: size,
    height: size,
    baseline: 0.25 * size,
    align(center + horizon, text(font: font, fill: white, size: 0.6 * size, glyph)),
  )
  h(0.2cm)
  body
}

// One row of the experience list. Collected by `entrylist` below rather
// than rendered on its own, so the date column lines up across all entries.
#let entry(date, title, org, desc) = (
  date: date,
  title: title,
  org: org,
  desc: desc,
)

// The experience list. The LaTeX version used a longtable whose rows were
// separated by a literal `\\\\`, which made the gap depend on the height of
// the preceding row; an explicit row-gutter keeps every gap identical and
// lets entries break cleanly across pages.
#let entrylist(..entries) = grid(
  columns: (17.5%, 82.5%),
  row-gutter: 1em,
  ..entries
    .pos()
    .map(e => (
      e.date,
      {
        grid(
          columns: (1fr, auto),
          column-gutter: 0.6em,
          align: (left + bottom, right + bottom),
          text(weight: "bold", e.title),
          text(weight: "bold", size: 0.85em, e.org),
        )
        e.desc
      },
    ))
    .flatten()
)

// Two side-by-side columns of equal width — used for the header and the
// skills list, replacing the LaTeX pairs of 0.48\textwidth minipages that
// only approximated equal columns.
#let two-col(left-body, right-body, gutter: 4%) = grid(
  columns: (1fr, 1fr),
  column-gutter: gutter,
  align: top,
  left-body,
  right-body,
)

// Document-wide setup.
#let cv(body) = {
  set page(
    paper: "a4",
    margin: (top: 1.75cm, bottom: 1.75cm, left: 2cm, right: 2cm),
  )
  // "Raleway-v4020" is the family name inside the official static release
  // shipped by the Raleway project. The files in fonts/ are byte-for-byte
  // upstream, so the SIL OFL reserved font name stays intact — see license.txt.
  set text(font: "Raleway-v4020", size: 9pt, lang: "en", hyphenate: false)
  set par(leading: 0.62em, spacing: 0.85em, first-line-indent: 0pt)
  set list(indent: 0pt, body-indent: 0.45em, spacing: 0.45em, marker: [•])
  show link: set text(fill: accent)
  body
}
