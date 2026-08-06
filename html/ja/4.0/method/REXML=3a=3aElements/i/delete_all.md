# REXML::Elements#delete_all

### def delete_all(xpath) -> [REXML::Element]

xpath で指定した XPath 文字列にマッチする要素をすべて取り除きます。

- **param** `xpath` -- 取り除く要素を指し示す XPath 文字列

```ruby
require 'rexml/document'
doc = REXML::Document.new('<a><c/><c/><c/><c/></a>')
p doc.elements.delete_all("a/c") # => [<c/>, <c/>, <c/>, <c/>]
p doc.to_s                     # => "<a/>"
```
