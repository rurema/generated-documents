# RubyVM::AbstractSyntaxTree::Node#first_lineno

### def first_lineno -> Integer

ソースコード中で、self を表すテキストが最初に現れる行番号を返します。

行番号は1-originです。

```ruby
node = RubyVM::AbstractSyntaxTree.parse('1 + 2')
p node.first_lineno # => 1
```
