# REXML::Text#value

### def value -> String

テキストの内容を非正規化(すべての実体をアンエスケープ)された状態で返します。

このメソッドの返り値では raw モードや entity_filter は無視されます。

- **SEE** [REXML::Text#raw](../../../method/REXML=3a=3aText/i/raw.md), [REXML::Text#to_s](../../../method/REXML=3a=3aText/i/to_s.md)

```ruby
require 'rexml/document'
t = REXML::Text.new("< & foobar", false, nil, false)
p t.to_s # => "&lt; &amp; foobar"
p t.value # => "< & foobar"
```
