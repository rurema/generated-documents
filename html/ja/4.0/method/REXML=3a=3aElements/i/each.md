# REXML::Elements#each

### def each(xpath = nil) {|element| ... } -> [REXML::Elements]

全ての子要素に対しブロックを呼び出します。

xpath を指定した場合には、その XPath 文字列にマッチする要素に対しブロックを呼び出します。

[REXML::XPath.each](../../../method/REXML=3a=3aXPath/s/each.md) などとは異なり、要素以外のテキストノードなどはすべて無視されることに注意してください。

- **param** `xpath` -- XPath文字列

```ruby
require 'rexml/document'
require 'rexml/xpath'
doc = REXML::Document.new '<a><b/><c/><d/>sean<b/><c/><d/></a>'
# <b/>,<c/>,<d/>,<b/>,<c/>, <d/> がブロックに渡される
doc.root.elements.each {|e|p e}
# <b/>, <b/> がブロックに渡される
doc.root.elements.each('b') {|e|p e}  #-> Yields b, b elements
# <b/>,<c/>,<d/>,<b/>,<c/>,<d/> がブロックに渡される
doc.root.elements.each('child::node()')  {|e|p e}
# <b/>,<c/>,<d/>,"sean",<b/>,<c/>,<d/> がブロックに渡される
REXML::XPath.each(doc.root, 'child::node()'){|node| p node }
```
