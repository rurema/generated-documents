# Prism::Node#inspect

### def inspect -> String

構文木をツリー形式で表した、人間が読みやすい文字列を返します。


```ruby title="例"
require "prism"

puts Prism.parse("1 + 2").value.inspect
```
