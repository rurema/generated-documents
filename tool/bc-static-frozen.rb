#!/usr/bin/env ruby

# 凍結版（FROZEN_VERSIONS）の静的 HTML を再生成する。
# 凍結版の DB は固定なので、出力が変わるのは bitclust（テンプレート）が
# 変わったときだけ。generate.sh は bitclust 更新時にのみこれを実行する。
# 編集リンクは付けない（対応するソースが doctree の master に無いため）。
require_relative 'static_html'

FROZEN_VERSIONS.reverse_each do |version|
  create_document(version, edit_base_url: nil)
end
