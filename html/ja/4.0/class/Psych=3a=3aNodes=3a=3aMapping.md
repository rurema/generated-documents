# class Psych::Nodes::Mapping < Psych::Nodes::Node

YAML の mapping <https://yaml.org/spec/1.1/#mapping> を表すクラスです。

Psych::Nodes::Mapping は 0 個以上の子ノードを持つことができます。
子ノードの個数は偶数でなければなりません。
子ノードは以下のいずれかクラスのインスタンスでなければなりません。
  - [Psych::Nodes::Sequence](../class/Psych=3a=3aNodes=3a=3aSequence.md)
  - [Psych::Nodes::Mapping](../class/Psych=3a=3aNodes=3a=3aMapping.md)
  - [Psych::Nodes::Scalar](../class/Psych=3a=3aNodes=3a=3aScalar.md)
  - [Psych::Nodes::Alias](../class/Psych=3a=3aNodes=3a=3aAlias.md)

子ノードは mapping のキーと値が交互に並んでいます。

```ruby
require 'psych'

ast = Psych.parse(<<EOS)
%YAML 1.1
---
x: y
u: v
EOS

p ast.root.children.map{|v| v.value } # => ["x", "y", "u", "v"]
```

## Class Methods

- [new](../method/Psych=3a=3aNodes=3a=3aMapping/s/new.md)

## Instance Methods

- [anchor](../method/Psych=3a=3aNodes=3a=3aMapping/i/anchor.md)
- [anchor=](../method/Psych=3a=3aNodes=3a=3aMapping/i/anchor=3d.md)
- [implicit](../method/Psych=3a=3aNodes=3a=3aMapping/i/implicit.md)
- [implicit=](../method/Psych=3a=3aNodes=3a=3aMapping/i/implicit=3d.md)
- [style](../method/Psych=3a=3aNodes=3a=3aMapping/i/style.md)
- [style=](../method/Psych=3a=3aNodes=3a=3aMapping/i/style=3d.md)
- [tag](../method/Psych=3a=3aNodes=3a=3aMapping/i/tag.md)
- [tag=](../method/Psych=3a=3aNodes=3a=3aMapping/i/tag=3d.md)

## Constants

- [ANY](../method/Psych=3a=3aNodes=3a=3aMapping/c/ANY.md)
- [BLOCK](../method/Psych=3a=3aNodes=3a=3aMapping/c/BLOCK.md)
- [FLOW](../method/Psych=3a=3aNodes=3a=3aMapping/c/FLOW.md)
