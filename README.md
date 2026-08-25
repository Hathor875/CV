# CV — Krzysztof Cieślik

Typeset with [Typst](https://typst.app). Built to `cv.pdf`; CI publishes it
to the `gh-pages` branch as `main.pdf` alongside a `preview.jpg` of page 1.

## Building

The fonts live in `fonts/` instead of being installed system-wide, so the
build is reproducible on any machine and on CI. That makes `--font-path`
mandatory — without it Typst silently substitutes a different typeface:

```sh
typst compile --font-path fonts cv.typ          # one-off build
typst watch   --font-path fonts cv.typ          # rebuild on every save
```

In VS Code, the Tinymist extension picks the fonts up automatically from
`.vscode/settings.json`; `Ctrl+K V` opens a live preview.

## Layout

| File | Contents |
|---|---|
| `cv.typ` | the content — nothing about how it looks |
| `template.typ` | the styling: section headings, entry list, icons, page setup |
| `fonts/` | Raleway and Font Awesome 6 Free, plus their licences |

To restyle the CV, edit `template.typ`. To change what it says, edit `cv.typ`.

## Licensing

Three different licences apply, so `license.txt` is worth a read before reusing
anything:

- **`template.typ` and the build config** — MIT. Ported from the "Developer CV"
  LaTeX template by Jan Vorisek, based on a template by Jan Küster, via
  [LaTeXTemplates.com](http://www.LaTeXTemplates.com). Take it and build your
  own CV with it.
- **`fonts/`** — Raleway and Font Awesome 6 Free, both SIL OFL 1.1, redistributed
  unmodified. Keep them that way: cutting your own static instances out of
  Raleway's variable font makes them a modified version, which may no longer
  carry the "Raleway" name.
- **`cv.typ`** — the CV content itself. Not covered by the MIT grant.
