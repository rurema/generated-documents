# REXML::CData#value

### def to_s -> String
### def value -> String

テキスト文字列を返します。

- **SEE** [REXML::Text#value](../../../method/REXML=3a=3aText/i/value.md), [REXML::Text#to_s](../../../method/REXML=3a=3aText/i/to_s.md)

```ruby
require 'rexml/document'
doc = REXML::Document.new(<<EOS)
<root><![CDATA[foobar  baz]]></root>
EOS
p doc.root[0].class # => REXML::CData
p doc.root[0].value # => "foobar  baz"
```
