# class Psych::Nodes::Document < Psych::Nodes::Node

YAML ドキュメントを表すクラスです。

このノードは [Psych::Nodes::Stream](../class/Psych=3a=3aNodes=3a=3aStream.md) の子ノードでなければなりません。このノードは1個の子ノードを持たなければなりません。
またこの子ノードは以下のいずれかである必要があります。
  - [Psych::Nodes::Sequence](../class/Psych=3a=3aNodes=3a=3aSequence.md)
  - [Psych::Nodes::Mapping](../class/Psych=3a=3aNodes=3a=3aMapping.md)
  - [Psych::Nodes::Scalar](../class/Psych=3a=3aNodes=3a=3aScalar.md)
この唯一の子ノードは「ルート」とも呼ばれ、[Psych::Nodes::Document#root](../method/Psych=3a=3aNodes=3a=3aDocument/i/root.md) でアクセスできます。

## Class Methods

- [new](../method/Psych=3a=3aNodes=3a=3aDocument/s/new.md)

## Instance Methods

- [implicit](../method/Psych=3a=3aNodes=3a=3aDocument/i/implicit.md)
- [implicit=](../method/Psych=3a=3aNodes=3a=3aDocument/i/implicit=3d.md)
- [implicit_end](../method/Psych=3a=3aNodes=3a=3aDocument/i/implicit_end.md)
- [implicit_end=](../method/Psych=3a=3aNodes=3a=3aDocument/i/implicit_end=3d.md)
- [root](../method/Psych=3a=3aNodes=3a=3aDocument/i/root.md)
- [tag_directives](../method/Psych=3a=3aNodes=3a=3aDocument/i/tag_directives.md)
- [tag_directives=](../method/Psych=3a=3aNodes=3a=3aDocument/i/tag_directives=3d.md)
- [version](../method/Psych=3a=3aNodes=3a=3aDocument/i/version.md)
- [version=](../method/Psych=3a=3aNodes=3a=3aDocument/i/version=3d.md)
