# class RDoc::Markup < Object

RDoc 形式のドキュメントを目的の形式に変換するためのクラスです。

例:

```ruby
require 'rdoc/markup/to_html'

h = RDoc::Markup::ToHtml.new
puts h.convert(input_string)
```

独自のフォーマットを行うようにパーサを拡張する事もできます。

```ruby title="例"
require 'rdoc/markup'
require 'rdoc/markup/to_html'

class WikiHtml < RDoc::Markup::ToHtml
  # WikiWord のフォントを赤く表示。
  def handle_special_WIKIWORD(special)
    "<font color=red>" + special.text + "</font>"
  end
end

m = RDoc::Markup.new
# { 〜 } までを :STRIKE でフォーマットする。
m.add_word_pair("{", "}", :STRIKE)
# <no> 〜 </no> までを :STRIKE でフォーマットする。
m.add_html("no", :STRIKE)

# WikiWord を追加。
m.add_special(/\b([A-Z][a-z]+[A-Z]\w+)/, :WIKIWORD)

wh = WikiHtml.new(m)
# :STRIKE のフォーマットを <strike> 〜 </strike> に指定。
wh.add_tag(:STRIKE, "<strike>", "</strike>")

puts "<body>#{wh.convert ARGF.read}</body>"
```

変換する形式を変更する場合、フォーマッタ(例. [RDoc::Markup::ToHtml](../class/RDoc=3a=3aMarkup=3a=3aToHtml.md))
を変更、拡張する必要があります。

## Class Methods

- [new](../method/RDoc=3a=3aMarkup/s/new.md)

## Instance Methods

- [add_html](../method/RDoc=3a=3aMarkup/i/add_html.md)
- [add_special](../method/RDoc=3a=3aMarkup/i/add_special.md)
- [add_word_pair](../method/RDoc=3a=3aMarkup/i/add_word_pair.md)
- [attribute_manager](../method/RDoc=3a=3aMarkup/i/attribute_manager.md)
- [content](../method/RDoc=3a=3aMarkup/i/content.md)
- [convert](../method/RDoc=3a=3aMarkup/i/convert.md)
- [get_line_types](../method/RDoc=3a=3aMarkup/i/get_line_types.md)

## Constants

- [LABEL_LIST_RE](../method/RDoc=3a=3aMarkup/c/LABEL_LIST_RE.md)
- [SIMPLE_LIST_RE](../method/RDoc=3a=3aMarkup/c/SIMPLE_LIST_RE.md)
- [SPACE](../method/RDoc=3a=3aMarkup/c/SPACE.md)
