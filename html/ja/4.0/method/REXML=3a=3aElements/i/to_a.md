# REXML::Elements#to_a

### def to_a(xpath = nil) -> [REXML::Element]

すべての子要素の配列を返します。

xpath を指定した場合は、その XPath 文字列にマッチする要素の配列を返します。

[REXML::Elements#each](../../../method/REXML=3a=3aElements/i/each.md) と同様、[REXML::XPath.match](../../../method/REXML=3a=3aXPath/s/match.md) などと異なり、要素以外の子ノードは無視されます。

- **param** `xpath` -- XPath文字列

```ruby
require 'rexml/document'
require 'rexml/xpath'
doc = REXML::Document.new '<a>sean<b/>elliott<c/></a>'
p doc.root.elements.to_a # => [<b/>, <c/>]
p doc.root.elements.to_a("child::node()") # => [<b/>, <c/>]
p REXML::XPath.match(doc.root, "child::node()") # => ["sean", <b/>, "elliott", <c/>]
```
