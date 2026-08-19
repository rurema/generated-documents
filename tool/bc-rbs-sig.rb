#!/usr/bin/env ruby

# RBS 型シグネチャをメソッドエントリに書き込む(rurema/bitclust#321)。
# RBS_TAGS(tool/vars.rb)にある対象バージョンの DB へ、その版に同梱される
# rbs の core シグネチャを bitclust rbssig で取り込む(表示は 4.0 以降のみ。
# 3.x と凍結版には何もしない)。
# ruby/rbs のチェックアウト先はリポジトリ外の /tmp にする。db/ 配下に置くと
# 日次の自動 PR が checkout を gitlink としてコミットしてしまい、次の run の
# チェックアウトで空ディレクトリになって clone がスキップされる
# (2026-08-18 のビルド失敗の原因)。--depth=1 なので毎回 clone してよい。
# bc-setup-all.rb(DB 構築)の後・bc-static-all.rb(静的 HTML 生成)の前に
# 実行すること。
require_relative 'vars'
require 'fileutils'

Dir.chdir(DOC_BASE) do
  RBS_TAGS.each do |version, tag|
    next unless VERSIONS.include?(version)
    checkout = "/tmp/rbs-#{tag}"
    # 失敗したらビルドを止める(シグネチャ無しの HTML が静かに公開されないように)。
    # ディレクトリの存在ではなく中身(core/)で判定し、空・壊れた残骸は作り直す
    unless File.directory?("#{checkout}/core")
      FileUtils.rm_rf(checkout)
      system(*%W"git clone --depth=1 --branch=#{tag} https://github.com/ruby/rbs.git #{checkout}",
             exception: true)
    end
    system(*%W"bundle exec bitclust rbssig --sig-root=#{checkout} #{DB_BASE}/db-#{version}",
           exception: true)
  end
end
