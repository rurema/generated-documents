# REXML::Element#add_attribute

### def add_attribute(key, value) -> ()
### def add_attribute(attr) -> ()

要素の属性を追加します。
同じ名前の属性がすでにある場合はその属性を新しい属性で置き換えます。

引数の与えかたは2通りあります。
要素名と値の2つの文字列で渡す方法と [REXML::Attribute](../../../class/REXML=3a=3aAttribute.md) オブジェクトを渡す方法です。

文字列2つで指定する場合、属性値は unnormalized な文字列を渡す必要があります。

- **param** `key` -- 属性名(文字列)
- **param** `value` -- 属性値(文字列)
- **param** `attr` -- 属性([REXML::Attribute](../../../class/REXML=3a=3aAttribute.md) オブジェクト)

```ruby
require 'rexml/document'
doc = REXML::Document.new("<e/>")
p doc.root.add_attribute("a", "b"); doc.root # => <e a='b'/>
p doc.root.add_attribute("x:a", "c"); doc.root # => <e a='b' x:a='c'/>
doc.root.add_attribute(REXML::Attribute.new("b", "d"))
p doc.root # => <e a='b' x:a='c' b='d'/>
```
