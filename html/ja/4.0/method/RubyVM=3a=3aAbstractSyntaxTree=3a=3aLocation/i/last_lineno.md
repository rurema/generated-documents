# RubyVM::AbstractSyntaxTree::Location#last_lineno

### def last_lineno -> Integer

ソースコード中で、この位置情報が指す範囲が終わる行番号を返します。

行番号は1-originです。

```ruby
loc = RubyVM::AbstractSyntaxTree.parse('1 + 2').locations.first
p loc.last_lineno # => 1
```
