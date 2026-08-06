# class Psych::TreeBuilder < Psych::Handler

YAML AST を構築するためのクラスです。

[Psych::Parser.new](../method/Psych=3a=3aParser/s/new.md) に渡して YAML ドキュメントを YAML AST に変換できます。

また、[Psych::Visitors::YAMLTree.new](../method/Psych=3a=3aVisitors=3a=3aYAMLTree/s/new.md) に渡して Ruby オブジェクトを YAML AST に変換することもできます。

### Example

```ruby
parser = Psych::Parser.new Psych::TreeBuilder.new
parser.parse('--- foo')
parser.handler.root # => #<Psych::Nodes::Stream:0x00000001400000 ... >
```

## Class Methods

- [new](../method/Psych=3a=3aTreeBuilder/s/new.md)

## Instance Methods

- [root](../method/Psych=3a=3aTreeBuilder/i/root.md)
