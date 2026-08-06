# class Psych::Nodes::Sequence < Psych::Nodes::Node

YAML sequence <https://yaml.org/spec/1.1/#sequence/syntax> を表すクラスです。

YAML sequence とは基本的にはリスト、配列です。以下のような例が考えられます。

```yaml
%YAML 1.1
---
- I am
- a Sequence
```

YAML sequence には anchor を付加できます。
この例では [Psych::Nodes::Sequence#anchor](../method/Psych=3a=3aNodes=3a=3aSequence/i/anchor.md) は "A" を返します。

```yaml
%YAML 1.1
---
&A [
  "This sequence",
  "has an anchor"
]
```

tag を付けることもできます。この例では
[Psych::Nodes::Sequence#tag](../method/Psych=3a=3aNodes=3a=3aSequence/i/tag.md) は "tag:yaml.org,2002:seq"
(!seq はこの tag の別名)を返します。

```yaml
%YAML 1.1
---
!!seq [
  "This sequence",
  "has a tag"
]
```

Psych::Nodes::Sequence は 0 個以上の子ノードを持つことができます。
子ノードは以下のいずれかクラスのインスタンスでなければなりません。
  - [Psych::Nodes::Sequence](../class/Psych=3a=3aNodes=3a=3aSequence.md)
  - [Psych::Nodes::Mapping](../class/Psych=3a=3aNodes=3a=3aMapping.md)
  - [Psych::Nodes::Scalar](../class/Psych=3a=3aNodes=3a=3aScalar.md)
  - [Psych::Nodes::Alias](../class/Psych=3a=3aNodes=3a=3aAlias.md)

## Class Methods

- [new](../method/Psych=3a=3aNodes=3a=3aSequence/s/new.md)

## Instance Methods

- [anchor](../method/Psych=3a=3aNodes=3a=3aSequence/i/anchor.md)
- [anchor=](../method/Psych=3a=3aNodes=3a=3aSequence/i/anchor=3d.md)
- [implicit](../method/Psych=3a=3aNodes=3a=3aSequence/i/implicit.md)
- [implicit=](../method/Psych=3a=3aNodes=3a=3aSequence/i/implicit=3d.md)
- [style](../method/Psych=3a=3aNodes=3a=3aSequence/i/style.md)
- [style=](../method/Psych=3a=3aNodes=3a=3aSequence/i/style=3d.md)
- [tag](../method/Psych=3a=3aNodes=3a=3aSequence/i/tag.md)
- [tag=](../method/Psych=3a=3aNodes=3a=3aSequence/i/tag=3d.md)

## Constants

- [ANY](../method/Psych=3a=3aNodes=3a=3aSequence/c/ANY.md)
- [BLOCK](../method/Psych=3a=3aNodes=3a=3aSequence/c/BLOCK.md)
- [FLOW](../method/Psych=3a=3aNodes=3a=3aSequence/c/FLOW.md)
