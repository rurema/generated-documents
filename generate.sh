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

git -C repos/bitclust rev-parse HEAD > db/bitclust.rev
git -C repos/doctree rev-parse HEAD > db/doctree.rev

if [ -z "$(git status -s db/*.rev)" ]; then
    echo do nothing because bitclust and doctree are same revisions
    exit
fi

time docker compose build rurema

time docker compose run --rm rurema ls -al

time docker compose run --rm rurema tool/bc-setup-all.rb
time docker compose run --rm rurema tool/bc-static-all.rb
