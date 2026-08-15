#!/usr/bin/env ruby

# RBS 型シグネチャをメソッドエントリに書き込む(rurema/bitclust#321)。
# RBS_TAGS(tool/vars.rb)にある対象バージョンの DB へ、その版に同梱される
# rbs の core シグネチャを bitclust rbssig で取り込む(表示は 4.0 以降のみ。
# 3.x と凍結版には何もしない)。ruby/rbs のチェックアウトはタグごとに
# db/ 配下へキャッシュする(db/ は毎日のコンテナ実行をまたいで残るボリューム)。
# bc-setup-all.rb(DB 構築)の後・bc-static-all.rb(静的 HTML 生成)の前に
# 実行すること。
require_relative 'vars'

Dir.chdir(DOC_BASE) do
  RBS_TAGS.each do |version, tag|
    next unless VERSIONS.include?(version)
    checkout = "#{DB_BASE}/rbs-#{tag}"
    # 失敗したらビルドを止める(シグネチャ無しの HTML が静かに公開されないように)
    unless File.directory?(checkout)
      system(*%W"git clone --depth=1 --branch=#{tag} https://github.com/ruby/rbs.git #{checkout}",
             exception: true)
    end
    system(*%W"bundle exec bitclust rbssig --sig-root=#{checkout} #{DB_BASE}/db-#{version}",
           exception: true)
  end
end
