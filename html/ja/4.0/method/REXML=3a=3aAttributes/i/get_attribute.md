# REXML::Attributes#get_attribute

### def get_attribute(name) -> Attribute | nil

name という名前の属性を取得します。

name という名前を持つ属性がない場合は nil を返します。

- **param** `name` -- 属性名(文字列)
- **SEE** [REXML::Attributes#\[\]](../../../method/REXML=3a=3aAttributes/i/=5b=5d.md)

```ruby
require 'rexml/document'

doc = REXML::Document.new(<<-EOS)
<root xmlns:foo="http://example.org/foo"
      xmlns:bar="http://example.org/bar">
  <a foo:att='1' bar:att='2' att='&lt;'/>
</root>
EOS
a = doc.get_elements("/root/a").first

p a.attributes.get_attribute("att") # => att='&lt;'
p a.attributes.get_attribute("foo:att") # => foo:att='1'
```
