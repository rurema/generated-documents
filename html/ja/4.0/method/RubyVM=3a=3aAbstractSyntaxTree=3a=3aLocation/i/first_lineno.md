# RubyVM::AbstractSyntaxTree::Location#first_lineno

### def first_lineno -> Integer

ソースコード中で、この位置情報が指す範囲が始まる行番号を返します。

行番号は1-originです。

```ruby
loc = RubyVM::AbstractSyntaxTree.parse('1 + 2').locations.first
p loc.first_lineno # => 1
```
