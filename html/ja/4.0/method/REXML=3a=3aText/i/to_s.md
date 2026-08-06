# REXML::Text#to_s

### def to_s -> String

テキストの内容を正規化(すべての実体をエスケープ)された状態で返します。

つまり返り値は XML のテキストとして妥当です。

結果は [REXML::Text.new](../../../method/REXML=3a=3aText/s/new.md) で指定した entity_filter を反映しています。

- **SEE** [REXML::Text#value](../../../method/REXML=3a=3aText/i/value.md)

```ruby
require 'rexml/document'
t = REXML::Text.new("< & foobar", false, nil, false)
p t.to_s # => "&lt; &amp; foobar"
p t.value # => "< & foobar"
```
