#!/usr/bin/env bash
# Build the site and stage the generated files at the repository root.
#
# GitHub Pages serves this repo from the branch root, so the built HTML has
# to be committed alongside the Hugo source. Run this after editing anything
# under content/, layouts/ or static/, then commit and push.
set -euo pipefail

cd "$(dirname "$0")"

BASEURL="https://crisphinen.github.io/portfolio/"

if ! command -v hugo >/dev/null; then
  echo "hugo not found on PATH (expected ~/bin/hugo)" >&2
  exit 1
fi

if [ ! -e themes/researcher/layouts ]; then
  echo "==> fetching theme submodule"
  git submodule update --init --recursive
fi

echo "==> building"
rm -rf public
hugo --minify --baseURL "$BASEURL"

echo "==> copying build output to the repository root"
cp -r public/. .
touch .nojekyll

echo
echo "Built. Review and publish with:"
echo "    git add -A && git commit -m 'Update site' && git push"
