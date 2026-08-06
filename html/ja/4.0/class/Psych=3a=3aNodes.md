# module Psych::Nodes

Psych が中間データとして利用している AST (Abstract Syntax Tree) に関するモジュール。

[Psych.load](../method/Psych/s/load.md) によって YAML ドキュメントを Ruby オブジェクトに変換するときには、一度中間的な AST に変換され、その AST が Ruby のオブジェクトに変換されます。

逆向き、つまり [Psych.dump](../method/Psych/s/dump.md) で Ruby のオブジェクトを
YAML ドキュメントに変換するときには、中間的な AST に変換してからそれを YAML ドキュメントに変換します。

YAML AST の各ノードのクラスはすべて Psych::Nodes の下にあります。
AST を手作業で構築して、visitor を使って AST を YAML ドキュメントや
Ruby のオブジェクトに変換できます。

以下の例ではスカラを1つ持つリストの AST を構築しています。

```ruby
# Create our nodes
stream = Psych::Nodes::Stream.new
doc    = Psych::Nodes::Document.new
seq    = Psych::Nodes::Sequence.new
scalar = Psych::Nodes::Scalar.new('foo')

# Build up our tree
stream.children << doc
doc.children    << seq
seq.children    << scalar
```

stream は AST のルートです。以下のようにして AST を YAML ドキュメントに変換できます。

```text
stream.to_yaml => "---\n- foo\n"
```

Ruby のオブジェクトに変換するためには以下のようにします。

```text
stream.to_ruby => [["foo"]]
```

### YAML AST 仕様

正しい YAML AST は [Psych::Nodes::Stream](../class/Psych=3a=3aNodes=3a=3aStream.md) ノードが木のルートでなければなりません。Psych::Nodes::Stream ノードは
1つ以上の [Psych::Nodes::Document](../class/Psych=3a=3aNodes=3a=3aDocument.md) ノードを子として持っていなければなりません。

Psych::Nodes::Document は子ノードをちょうど1個持っていなければなりません。
子ノードは以下のいずれかでなければなりません。
- [Psych::Nodes::Sequence](../class/Psych=3a=3aNodes=3a=3aSequence.md)
- [Psych::Nodes::Mapping](../class/Psych=3a=3aNodes=3a=3aMapping.md)
- [Psych::Nodes::Scalar](../class/Psych=3a=3aNodes=3a=3aScalar.md)

[Psych::Nodes::Sequence](../class/Psych=3a=3aNodes=3a=3aSequence.md) と [Psych::Nodes::Mapping](../class/Psych=3a=3aNodes=3a=3aMapping.md) は複数の子ノードを持つことができます。Psych::Nodes::Mapping の子ノード数は偶数でなければなりません。

Psych::Nodes::Sequence と Psych::Nodes::Mapping の子ノードとして有効なものは以下のいずれかです。
- [Psych::Nodes::Sequence](../class/Psych=3a=3aNodes=3a=3aSequence.md)
- [Psych::Nodes::Mapping](../class/Psych=3a=3aNodes=3a=3aMapping.md)
- [Psych::Nodes::Scalar](../class/Psych=3a=3aNodes=3a=3aScalar.md)
- [Psych::Nodes::Alias](../class/Psych=3a=3aNodes=3a=3aAlias.md)

[Psych::Nodes::Scalar](../class/Psych=3a=3aNodes=3a=3aScalar.md) と [Psych::Nodes::Alias](../class/Psych=3a=3aNodes=3a=3aAlias.md) は子ノードを持つことができません。
