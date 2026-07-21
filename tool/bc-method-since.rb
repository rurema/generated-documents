#!/usr/bin/env ruby

# メソッド名ごとの「どの Ruby バージョンから使えるか / どの版で削除されたか」
# (since/until)を、全バージョンの DB を横断して算出し、毎日再構築される
# バージョン(VERSIONS)の DB に書き込む(rurema/bitclust#132)。
# 凍結版(FROZEN_VERSIONS)の DB は読み取り専用のラダーとしてだけ使い、
# 書き込まない。著者が {: since="X"} 等で明示した値は上書きされない。
# bc-setup-all.rb(DB 構築)の後・bc-static-all.rb(静的 HTML 生成)の前に
# 実行すること。
require_relative 'vars'

updates = VERSIONS.map { |version| "--update=#{DB_BASE}/db-#{version}" }
ladder = ALL_VERSIONS.map { |version| "#{DB_BASE}/db-#{version}" }

Dir.chdir(DOC_BASE) do
  # 失敗したらビルドを止める(バッジ無しの HTML が静かに公開されないように)
  system(*%W"bundle exec bitclust methodsince", *updates, *ladder, exception: true)
end
