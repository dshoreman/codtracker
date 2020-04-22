#!/usr/bin/env sh

set -e

npm run build

cd dist
echo 'codtracker.ga' >> CNAME
git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:dshoreman/codtracker.git master:gh-pages
