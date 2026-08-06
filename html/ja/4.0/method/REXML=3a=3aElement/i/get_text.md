# REXML::Element#get_text

### def get_text(path = nil) -> REXML::Text | nil

先頭のテキスト子ノードを返します。

raw モードの設定は無視され、常に正規化されたテキストを返します。
[REXML::Text#value](../../../method/REXML=3a=3aText/i/value.md) も参照してください。

path を渡した場合は、その XPath 文字列で指定されるテキストノードの文字列を返します。

テキストノードがない場合には nil を返します。

- **param** `path` -- XPath文字列
- **SEE** [REXML::Element#text](../../../method/REXML=3a=3aElement/i/text.md)

```ruby
require 'rexml/document'
doc = REXML::Document.new "<p>some text <b>this is bold!</b> more text</p>"
# doc.root (<p> ... </p>) は2つのテキストノード("some text " と " more text"
# を持っているが、前者を返す
p doc.root.get_text.value # => "some text "
```
