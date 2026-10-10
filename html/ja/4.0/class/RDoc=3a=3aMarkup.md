# class RDoc::Markup < Object

RDoc 形式のドキュメントを目的の形式に変換するためのクラスです。

例:

```ruby
require 'rdoc'
require 'rdoc/markup/to_html'

h = RDoc::Markup::ToHtml.new(RDoc::Options.new)
p h.convert("*bold*")
# => "\n<p><strong>bold</strong></p>\n"
```

独自のフォーマットを行うようにパーサを拡張する事もできます。


```ruby title="例"
require 'rdoc'
require 'rdoc/markup/to_html'

class WikiHtml < RDoc::Markup::ToHtml
  # WikiWord のフォントを赤く表示。
  def handle_regexp_WIKIWORD(target)
    "<font color=red>" + target.text + "</font>"
  end
end

m = RDoc::Markup.new
# { 〜 } までを :MARK でフォーマットする。
m.add_word_pair("{", "}", :MARK)
# <no> 〜 </no> までを :MARK でフォーマットする。
m.add_html("no", :MARK)

# WikiWord を追加。
m.add_regexp_handling(/\b([A-Z][a-z]+[A-Z]\w+)/, :WIKIWORD)

wh = WikiHtml.new(RDoc::Options.new, m)
# :MARK のフォーマットを <mark> 〜 </mark> に指定。
wh.add_tag(:MARK, "<mark>", "</mark>")

p wh.convert("WikiWord {del} <no>x</no>")
# => "\n<p><font color=red>WikiWord</font> <mark>del</mark> <mark>x</mark></p>\n"
```


変換する形式を変更する場合、フォーマッタ(例. [RDoc::Markup::ToHtml](../class/RDoc=3a=3aMarkup=3a=3aToHtml.md))
を変更、拡張する必要があります。

## Class Methods

- [new](../method/RDoc=3a=3aMarkup/s/new.md)

## Instance Methods

- [add_html](../method/RDoc=3a=3aMarkup/i/add_html.md)
- [add_regexp_handling](../method/RDoc=3a=3aMarkup/i/add_regexp_handling.md)
- [add_word_pair](../method/RDoc=3a=3aMarkup/i/add_word_pair.md)
- [attribute_manager](../method/RDoc=3a=3aMarkup/i/attribute_manager.md)
- [convert](../method/RDoc=3a=3aMarkup/i/convert.md)

## Constants

- [LABEL_LIST_RE](../method/RDoc=3a=3aMarkup/c/LABEL_LIST_RE.md)
- [SIMPLE_LIST_RE](../method/RDoc=3a=3aMarkup/c/SIMPLE_LIST_RE.md)
- [SPACE](../method/RDoc=3a=3aMarkup/c/SPACE.md)
