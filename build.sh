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

if test -d repos/docs.ruby-lang.org; then
    pushd repos/docs.ruby-lang.org
    git fetch origin
    git reset origin/master --hard
    popd
else
    git clone --depth 1 https://github.com/ruby/docs.ruby-lang.org repos/docs.ruby-lang.org
fi

cp repos/docs.ruby-lang.org/public/ja/index.html html/ja/index.html

docker compose up -d
