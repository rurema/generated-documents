# class Psych::Visitors::YAMLTree < Psych::Visitors::Visitor

Ruby オブジェクトから YAML の AST を構築するためのクラスです。

### 例

```ruby
require 'psych'

builder = Psych::Visitors::YAMLTree.create
builder << { :foo => 'bar' }
builder << ["baz", "bazbaz"]
p builder.tree # => #<Psych::Nodes::Stream ... > A stream containing two documents
puts builder.tree.to_yaml
# =>
# ---
# :foo: bar
# ---
# - baz
# - bazbaz
```

## Class Methods

- [create](../method/Psych=3a=3aVisitors=3a=3aYAMLTree/s/create.md)
- [new](../method/Psych=3a=3aVisitors=3a=3aYAMLTree/s/new.md)

## Instance Methods

- [<<](../method/Psych=3a=3aVisitors=3a=3aYAMLTree/i/=3c=3c.md)
- [push](../method/Psych=3a=3aVisitors=3a=3aYAMLTree/i/push.md)
- [finish](../method/Psych=3a=3aVisitors=3a=3aYAMLTree/i/finish.md)
- [finished](../method/Psych=3a=3aVisitors=3a=3aYAMLTree/i/finished.md)
- [finished?](../method/Psych=3a=3aVisitors=3a=3aYAMLTree/i/finished=3f.md)
- [start](../method/Psych=3a=3aVisitors=3a=3aYAMLTree/i/start.md)
- [started](../method/Psych=3a=3aVisitors=3a=3aYAMLTree/i/started.md)
- [started?](../method/Psych=3a=3aVisitors=3a=3aYAMLTree/i/started=3f.md)
- [tree](../method/Psych=3a=3aVisitors=3a=3aYAMLTree/i/tree.md)
