# Psych::Nodes::Node#sequence?

### def sequence? -> bool

`self` が [Psych::Nodes::Sequence](../../../class/Psych=3a=3aNodes=3a=3aSequence.md) を表すノードかどうかを返します。

`Psych::Nodes::Node` では常に false を返します。`Psych::Nodes::Sequence` ではこのメソッドを override しており、常に true を返します。

- **SEE** [Psych::Nodes::Sequence](../../../class/Psych=3a=3aNodes=3a=3aSequence.md)
