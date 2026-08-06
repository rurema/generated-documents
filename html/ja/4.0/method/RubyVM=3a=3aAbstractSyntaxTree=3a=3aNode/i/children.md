# RubyVM::AbstractSyntaxTree::Node#children

### def children -> Array

self の子ノードを配列で返します。

どのような子ノードが返ってくるかは、そのノードの type によって異なります。

戻り値は、ほかの RubyVM::AbstractSyntaxTree::Node のインスタンスや nil を含みます。

```ruby
node = RubyVM::AbstractSyntaxTree.parse('1 + 2')
p node.children
# => [[], nil, #<RubyVM::AbstractSyntaxTree::Node:OPCALL@1:0-1:5>]
```
