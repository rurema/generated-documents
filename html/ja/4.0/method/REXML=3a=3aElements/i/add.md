# REXML::Elements#add

### def add(element = nil) -> REXML::Element
### def <<(element = nil) -> REXML::Element

要素 element を追加します。

element には文字列もしくは [REXML::Element](../../../class/REXML=3a=3aElement.md) オブジェクトを指定します。文字列を指定した場合には [REXML::Element.new](../../../method/REXML=3a=3aElement/s/new.md)(element)
で生成される要素を追加します。

element を省略した場合は、空の要素が追加されます。

追加された要素が返されます。

- **param** `element` -- 追加する要素

```ruby
require 'rexml/document'
a = REXML::Element.new('a')
p a.elements.add(REXML::Element.new('b'))  # => <b/>
p a.to_s # => "<a><b/></a>"
p a.elements.add('c') # => <c/>
p a.to_s # => "<a><b/><c/></a>"
```
