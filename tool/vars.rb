# 凍結版: サポートが終了し、ドキュメントの更新を止めたバージョン。
# db/db-<version> は Import された固定 DB で、bc-setup-all では再構築しない。
# 静的 HTML は bitclust 更新時（テンプレート変更時）のみ再生成し
# （tool/bc-static-frozen.rb）、検索ページには常に含める。
# 各版の DB 生成に使った doctree のソースは frozen-<version> タグ
# （修正が必要になったらそこからブランチを作り、DB を再構築して Import し直す。
# doctree の docs/OldVersionArchives.md 参照）
FROZEN_VERSIONS = %w[
  1.8.7
  1.9.3
  2.0.0
  2.1.0
  2.2.0
  2.3.0
  2.4.0
  2.5.0
  2.6.0
  2.7.0
]

# 毎日 doctree HEAD の manual/ から DB を再構築するバージョン。
# あるバージョンを凍結するときは、ここから FROZEN_VERSIONS へ移し、
# doctree に frozen-<version> タグを打つ
VERSIONS = %w[
  3.0
  3.1
  3.2
  3.3
  3.4
  4.0
  4.1
]

ALL_VERSIONS = FROZEN_VERSIONS + VERSIONS

# メンテナンスが継続している最古のバージョン。これより古い版の静的 HTML には
# EOL 警告バナーを表示する（bitclust statichtml --eol-warning）。
# EOL 状況は https://www.ruby-lang.org/ja/downloads/branches/
# （一次データは ruby/www.ruby-lang.org の _data/branches.yml）を参照して更新する
MINIMUM_SUPPORTED_RUBY_VERSION = Gem::Version.new("3.3")

DB_BASE = File.expand_path("../db", __dir__)

DOC_BASE = File.expand_path("../doctree", __dir__)
MANUAL_BASE = "manual" # was REF_BASE = "refm"

TMP_HTML_BASE = File.expand_path("../tmp/html", __dir__)

BITCLUST_BASE = File.expand_path("../bitclust", __dir__)
BITCLUST_DATA = "#{BITCLUST_BASE}/data/bitclust"
TEMPLATE = "#{BITCLUST_DATA}/template.offline"
CATALOG = "#{BITCLUST_DATA}/catalog"

DOC_ROOT = File.expand_path("../html/ja", __dir__)
