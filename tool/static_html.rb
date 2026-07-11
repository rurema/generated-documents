# 静的 HTML 生成の共通処理（bc-static-all.rb / bc-static-frozen.rb から使う）
require 'fileutils'
require_relative 'vars'

# 未リリース版（VERSIONS 末尾 = /ja/master/ symlink の実体）には head 用
# スナップショット (@ruby/head-wasm-wasi) を使う。ただしスナップショットの
# 元になる ruby/ruby master のバージョンが version と一致するときだけ
# （リリース移行期に master が次の開発版に進んでいる場合は自動で無効になる）。
# URL はその日の next スナップショットに完全固定する。判定・取得に失敗しても
# ビルドは止めず、RUN ボタンなしにフォールバックする。
def ruby_head_wasm_url(version)
  require 'net/http'
  require 'json'
  version_h = Net::HTTP.get(URI("https://raw.githubusercontent.com/ruby/ruby/master/include/ruby/version.h"))
  major = version_h[/RUBY_API_VERSION_MAJOR (\d+)/, 1]
  minor = version_h[/RUBY_API_VERSION_MINOR (\d+)/, 1]
  return nil unless version == "#{major}.#{minor}"
  tags = JSON.parse(Net::HTTP.get(URI("https://data.jsdelivr.com/v1/packages/npm/@ruby/head-wasm-wasi")))["tags"]
  snapshot = tags["next"] or return nil
  "https://cdn.jsdelivr.net/npm/@ruby/head-wasm-wasi@#{snapshot}/dist/ruby+stdlib.wasm"
rescue StandardError => e
  warn "ruby_head_wasm_url: #{e.class}: #{e.message} (disabling the RUN button for #{version})"
  nil
end

# edit_base_url: nil を渡すと編集リンクを出さない（凍結版。
# 対応するソースが doctree の master に存在しないため）
# stop_on_syntax_error: false を渡すとサンプルコードの
# シンタックスハイライト失敗を無視する（素のコードで描画して続行）
def create_document(version, edit_base_url: "https://github.com/rurema/doctree/edit/master/", stop_on_syntax_error: true)
  db = "#{DB_BASE}/db-#{version}"
  outputdir = "#{TMP_HTML_BASE}/#{version}"
  command = [
    "bundle",
    "exec",
    "bitclust",
    "--database=#{db}",
    "statichtml",
    "--outputdir=#{outputdir}",
    "--templatedir=#{TEMPLATE}",
    "--catalog=#{CATALOG}",
    "--fs-casesensitive",
    "--canonical-base-url=https://docs.ruby-lang.org/ja/latest/",
    "--meta-robots-content=",
    "--tracking-id=G-HBG2MP4NRL",
    "--quiet",
  ]
  command << "--edit-base-url=#{edit_base_url}" if edit_base_url
  command << "--no-stop-on-syntax-error" unless stop_on_syntax_error
  command << "--eol-warning" if MINIMUM_SUPPORTED_RUBY_VERSION > version
  wasm_url = RUBY_WASM_URLS[version]
  wasm_url ||= ruby_head_wasm_url(version) if version == VERSIONS[-1]
  command << "--run-ruby-wasm=#{wasm_url}" if wasm_url
  system(*command, chdir: DOC_BASE) or raise
  system("rsync", "-acvi", "--no-times", "--delete", outputdir, DOC_ROOT) or raise
  FileUtils.rm_rf outputdir
  puts "#{version} is done."
end
