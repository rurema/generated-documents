# RubyVM::AbstractSyntaxTree::Location#last_column

### def last_column -> Integer

ソースコード中で、この位置情報が指す範囲が終わる列番号を返します。

列番号は0-originで、バイト単位で表されます。

```ruby
loc = RubyVM::AbstractSyntaxTree.parse('1 + 2').locations.first
p loc.last_column # => 5
```
