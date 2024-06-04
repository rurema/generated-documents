#!/bin/bash
set -euxo pipefail

if test -d repos/rurema-search; then
    pushd repos/rurema-search
    git fetch origin
    git reset origin/ro --hard
    popd
else
    git clone --depth 1 https://github.com/ruby/rurema-search repos/rurema-search
fi

time docker compose build rurema-search

docker compose up -d
