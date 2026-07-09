# 静的 HTML 生成の共通処理（bc-static-all.rb / bc-static-frozen.rb から使う）
require 'fileutils'
require_relative 'vars'

# edit_base_url: nil を渡すと編集リンクを出さない（凍結版。
# 対応するソースが doctree の master に存在しないため）
def create_document(version, edit_base_url: "https://github.com/rurema/doctree/edit/master/")
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
    "--tracking-id=UA-620926-3",
    "--quiet",
  ]
  command << "--edit-base-url=#{edit_base_url}" if edit_base_url
  system(*command, chdir: DOC_BASE) or raise
  system("rsync", "-acvi", "--no-times", "--delete", outputdir, DOC_ROOT) or raise
  FileUtils.rm_rf outputdir
  puts "#{version} is done."
end
