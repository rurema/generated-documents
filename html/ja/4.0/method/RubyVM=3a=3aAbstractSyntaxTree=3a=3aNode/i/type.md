# RubyVM::AbstractSyntaxTree::Node#type

### def type -> Symbol

self の種類を Symbol で返します。

```ruby
node = RubyVM::AbstractSyntaxTree.parse('1 + 1')
p node.type # => :SCOPE
```
