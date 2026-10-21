# Ngari Crisphine - personal site

Source for my academic site at <https://crisphinen.github.io/portfolio/>: research projects, publications,
teaching and CV. Built with [Hugo](https://gohugo.io) and the
[hugo-researcher](https://github.com/ojroques/hugo-researcher) theme.

## Layout

| Path | What it holds |
|------|---------------|
| `content/` | Page text in Markdown: home (`_index.md`), `about.md`, `research.md`, `publication.md`, `teaching.md` |
| `static/img/` | Project figures used on the Research page |
| `cv/Crisphine_Resume.tex` | CV source; the built PDF is copied to `static/` and the repository root |
| `layouts/` | Overrides of the theme's header, head and shortcodes (`project-figure`) |
| `hugo.toml` | Site title, menu and base URL |
| `themes/researcher/` | Theme, as a git submodule |
| everything else at the root | Generated site (HTML, XML, CSS) served by GitHub Pages |

## Editing

Edit the files under `content/`, `static/`, `layouts/` or `cv/`, then rebuild.
Do not edit the generated HTML or `index.xml` directly: the next build
overwrites them.

## Building

Requires Hugo extended 0.161.1 or later.

```
git submodule update --init --recursive
./build.sh
git add -A && git commit -m "Update site" && git push
```

`build.sh` builds into `public/` and copies the output to the repository root,
which is what GitHub Pages serves. To preview locally, run `hugo server` and
open <http://localhost:1313/>.

## CV

The CV uses `geometry`, `lmodern`, `enumitem`, `titlesec`, `xcolor` and `hyperref`.

```
cd cv
pdflatex Crisphine_Resume.tex
cp Crisphine_Resume.pdf ../static/ && cp Crisphine_Resume.pdf ..
```

Then run `./build.sh` so the site links to the new PDF.
