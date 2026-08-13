# RubyVM::AbstractSyntaxTree.node_id_for_backtrace_location

### def RubyVM::AbstractSyntaxTree.node_id_for_backtrace_location(backtrace_location) -> Integer

引数の [Thread::Backtrace::Location](../../../class/Thread=3a=3aBacktrace=3a=3aLocation.md) が指すコードの位置に対応するノードの ID を返します。

ID は [RubyVM::AbstractSyntaxTree::Node#node_id](../../../method/RubyVM=3a=3aAbstractSyntaxTree=3a=3aNode/i/node_id.md) と同じ体系の整数で、具体的な値は Ruby のバージョンやパーサによって異なります。

- **param** `backtrace_location` -- [Thread::Backtrace::Location](../../../class/Thread=3a=3aBacktrace=3a=3aLocation.md) を指定します。

- **raise** `TypeError` -- backtrace_location が [Thread::Backtrace::Location](../../../class/Thread=3a=3aBacktrace=3a=3aLocation.md) でない場合に発生します。

```ruby title="例"
loc = caller_locations(0, 1).first
p RubyVM::AbstractSyntaxTree.node_id_for_backtrace_location(loc) # => 3
```

- **SEE** [RubyVM::AbstractSyntaxTree::Node#node_id](../../../method/RubyVM=3a=3aAbstractSyntaxTree=3a=3aNode/i/node_id.md)
