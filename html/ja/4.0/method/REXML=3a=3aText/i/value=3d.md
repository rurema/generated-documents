# REXML::Text#value=

### def value=(val)

テキストの内容を val に変更します。

val には非正規化された(エスケープされていない)文字列を渡さなければなりません。

```ruby
require 'rexml/document'
e = REXML::Element.new("a")
e.add_text("foo")
e[0].value = "bar"
p e.to_s # => "<a>bar</a>"
e[0].value = "<a>"
p e.to_s # => "<a>&lt;a&gt;</a>"
```
