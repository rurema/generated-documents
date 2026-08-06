# RubyVM::AbstractSyntaxTree::Node#inspect

### def inspect -> String

self のデバッグ用の情報を含んだ文字列を返します。

```ruby
node = RubyVM::AbstractSyntaxTree.parse('1 + 1')
puts node.inspect
# => #<RubyVM::AbstractSyntaxTree::Node:SCOPE@1:0-1:5>
```
