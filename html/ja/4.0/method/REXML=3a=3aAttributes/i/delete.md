# REXML::Attributes#delete

### def delete(attribute) -> REXML::Element

指定した属性を取り除きます。

attribute で取り除く属性を指定します。
文字列もしくは [REXML::Attribute](../../../class/REXML=3a=3aAttribute.md) オブジェクトを指定します

self が属する要素([REXML::Element](../../../class/REXML=3a=3aElement.md))を返します。

- **param** `attribute` -- 取り除く属性(文字列もしくは REXML::Attribute オブジェクト)

```ruby
require 'rexml/document'

doc = REXML::Document.new(<<-EOS)
<root xmlns:foo="http://example.org/foo"
      xmlns:bar="http://example.org/bar">
  <a foo:att='1' bar:att='2' att='&lt;'/>
</root>
EOS
a = doc.get_elements("/root/a").first

p a.attributes.delete("att")   # => <a foo:att='1' bar:att='2'/>
p a.attributes.delete("foo:att") # => <a bar:att='2'/>
attr = a.attributes.get_attribute("bar:att")
p a.attributes.delete(attr)    # => <a/>
```
