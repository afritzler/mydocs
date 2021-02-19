#!/bin/bash
set -e

git config user.name "Andreas Fritzler"
git config user.email "andreas.fritzler@gmail.com"
git remote add gh-token "https://AF:${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git"
git fetch gh-token && git fetch gh-token gh-pages:gh-pages
mkdocs gh-deploy -v --clean --remote-name gh-token