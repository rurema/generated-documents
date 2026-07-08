#!/usr/bin/env ruby

# 暫定ガード: Markdown ソースの DB（properties に source_format=markdown）は
# 現行の bitclust-indexer が解釈できない（メソッドが索引されず、既存レコードも
# purge_old_records で消える）ため、索引の更新をスキップして既存 index を
# 凍結する。恒久対応はクライアントサイド静的検索への移行。
databases = Dir.glob(File.expand_path("../db/db-*", __dir__)).sort
markdown_databases = databases.select do |db|
  properties = File.join(db, "properties")
  File.exist?(properties) && File.read(properties).match?(/^source_format=markdown$/)
end
unless markdown_databases.empty?
  warn "skip indexing: bitclust-indexer does not support markdown-format databases:"
  markdown_databases.each { |db| warn "  #{db}" }
  exit
end

Dir.chdir(File.expand_path("../rurema-search", __dir__))
Process.exec("bundle", "exec", "bin/bitclust-indexer", *databases)
