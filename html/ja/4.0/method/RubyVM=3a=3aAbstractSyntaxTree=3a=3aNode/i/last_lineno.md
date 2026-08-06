# RubyVM::AbstractSyntaxTree::Node#last_lineno

### def last_lineno -> Integer

ソースコード中で、self を表すテキストが最後に現れる行番号を返します。

行番号は1-originです。

```ruby
node = RubyVM::AbstractSyntaxTree.parse('1 + 1')
p node.last_lineno # => 1
```
