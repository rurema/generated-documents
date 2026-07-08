#!/usr/bin/env ruby

require 'fileutils'
require_relative 'vars'

# 全バージョン対応の静的検索ページ（docs.ruby-lang.org/ja/search/ の
# rurema-search 置き換え）。全版の DB から versions タグ付きの統合 index と
# ページ一式を html/ja/search/ に生成する。
# bitclust の searchpage サブコマンドが必要（master マージ後に有効化する）。
outputdir = "#{DOC_ROOT}/search"
databases = VERSIONS.map { |version| "#{DB_BASE}/db-#{version}" }

FileUtils.rm_rf outputdir
system("bundle", "exec", "bitclust", "searchpage",
       "--outputdir=#{outputdir}",
       "--fs-casesensitive",
       *databases,
       chdir: DOC_BASE) or raise "Failed to generate search page"
puts "search page is done."
