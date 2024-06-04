#!/bin/bash
set -euxo pipefail

if test -d repos/bitclust; then
    pushd repos/bitclust
    git fetch origin
    git reset origin/master --hard
    popd
else
    git clone --depth 1 https://github.com/rurema/bitclust repos/bitclust
fi

if test -d repos/doctree; then
    pushd repos/doctree
    git fetch origin
    git reset origin/master --hard
    popd
else
    git clone --depth 1 https://github.com/rurema/doctree repos/doctree
fi

time docker compose build rurema

time docker compose run --rm rurema tool/bc-setup-all.rb
time docker compose run --rm rurema tool/bc-static-all.rb
