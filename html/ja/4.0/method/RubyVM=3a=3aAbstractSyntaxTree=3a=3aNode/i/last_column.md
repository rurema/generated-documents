# RubyVM::AbstractSyntaxTree::Node#last_column

### def last_column -> Integer

ソースコード中で、self を表すテキストが最後に現れる列番号を返します。

列番号は0-originで、バイト単位で表されます。

```ruby
node = RubyVM::AbstractSyntaxTree.parse('1 + 1')
p node.last_column # => 5
```
