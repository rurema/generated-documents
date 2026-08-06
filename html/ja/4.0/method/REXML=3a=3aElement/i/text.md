# REXML::Element#text

### def text(path = nil) -> String | nil

先頭のテキスト子ノードの文字列を返します。

テキストノードを複数保持している場合は最初のノードにしかアクセスできないことに注意してください。

raw モードの設定は無視され、常に正規化されたテキストを返します。
[REXML::Text#value](../../../method/REXML=3a=3aText/i/value.md) も参照してください。

path を渡した場合は、その XPath 文字列で指定されるテキストノードの文字列を返します。

テキストノードがない場合には nil を返します。

- **param** `path` -- XPath文字列
- **SEE** [REXML::Element#get_text](../../../method/REXML=3a=3aElement/i/get_text.md)

```ruby
require 'rexml/document'
doc = REXML::Document.new "<p>some text <b>this is bold!</b> more text</p>"
# doc.root (<p> ... </p>) は2つのテキストノード("some text " と " more text"
# を持っているが、前者を返す
p doc.root.text # => "some text "
```
