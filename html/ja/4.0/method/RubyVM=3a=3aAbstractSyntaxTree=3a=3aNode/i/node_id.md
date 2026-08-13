# RubyVM::AbstractSyntaxTree::Node#node_id

### def node_id -> Integer

self に割り当てられた ID を返します。

ID は抽象構文木の中でノードを識別するための整数です。具体的な値は Ruby のバージョンやパーサによって異なります。

```ruby
node = RubyVM::AbstractSyntaxTree.parse("x = 1 + 2\ny = 3\n")
p node.node_id # => 9
```

- **SEE** [RubyVM::AbstractSyntaxTree.node_id_for_backtrace_location](../../../method/RubyVM=3a=3aAbstractSyntaxTree/s/node_id_for_backtrace_location.md)
