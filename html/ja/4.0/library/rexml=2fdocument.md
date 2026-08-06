# library rexml/document

DOM スタイルの XML パーサ。

[REXML::Document.new](../method/REXML=3a=3aDocument/s/new.md) で XML 文書から DOM ツリーを構築し、ツリーのノードの各メソッドで文書の内容にアクセスします。

以下のプログラムではブックマークの XML からデータを取り出します。

```ruby
require 'rexml/document'
require 'pp'

Bookmark = Struct.new(:href, :title, :desc)

doc = REXML::Document.new(<<XML)
<?xml version="1.0" encoding="UTF-8" ?>
<xbel version="1.0">
  <bookmark href="http://www.ruby-lang.org/ja/">
    <title>オブジェクト指向スクリプト言語 Ruby</title>
    <desc>Rubyの公式サイト</desc>
  </bookmark>
  <bookmark href="http://rurema.clear-code.com/">
    <title>最速Rubyリファレンスマニュアル検索！ | るりまサーチ</title>
    <desc>Rubyリファレンスマニュアルを全文検索できる。
とても便利。
    </desc>
  </bookmark>
  <bookmark href="https://github.com/rurema/bitclust">
    <title>rurema/bitclust · GitHub</title>
  </bookmark>
  <bookmark href="https://rubygems.org/gems/bitclust-core" />
</xbel>
XML

bookmarks = REXML::XPath.match(doc, "/xbel/bookmark").map do |bookmark|
  href = bookmark.attribute("href").value
  title_element =  bookmark.elements["title"]
  title = title_element ? title_element.text : nil
  desc_element = bookmark.elements["desc"]
  desc = desc_element ? desc_element.text : nil
  Bookmark.new(href, title, desc)
end
pp bookmarks
# >> [#<struct Bookmark
# >>   href="http://www.ruby-lang.org/ja/",
# >>   title="オブジェクト指向スクリプト言語 Ruby",
# >>   desc="Rubyの公式サイト">,
# >>  #<struct Bookmark
# >>   href="http://rurema.clear-code.com/",
# >>   title="最速Rubyリファレンスマニュアル検索！ | るりまサーチ",
# >>   desc="Rubyリファレンスマニュアルを全文検索できる。\nとても便利。\n    ">,
# >>  #<struct Bookmark
# >>   href="https://github.com/rurema/bitclust",
# >>   title="rurema/bitclust · GitHub",
# >>   desc=nil>,
# >>  #<struct Bookmark
# >>   href="https://rubygems.org/gems/bitclust-core",
# >>   title=nil,
# >>   desc=nil>]
```
