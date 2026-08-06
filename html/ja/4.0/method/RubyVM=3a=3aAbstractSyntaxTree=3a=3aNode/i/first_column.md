# RubyVM::AbstractSyntaxTree::Node#first_column

### def first_column -> Integer

ソースコード中で、self を表すテキストが最初に現れる列番号を返します。

列番号は0-originで、バイト単位で表されます。

```ruby
node = RubyVM::AbstractSyntaxTree.parse('1 + 2')
p node.first_column # => 0
```
