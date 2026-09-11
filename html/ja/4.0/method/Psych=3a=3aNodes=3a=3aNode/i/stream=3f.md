# Psych::Nodes::Node#stream?

### def stream? -> bool

`self` が [Psych::Nodes::Stream](../../../class/Psych=3a=3aNodes=3a=3aStream.md) を表すノードかどうかを返します。

`Psych::Nodes::Node` では常に false を返します。`Psych::Nodes::Stream` ではこのメソッドを override しており、常に true を返します。

- **SEE** [Psych::Nodes::Stream](../../../class/Psych=3a=3aNodes=3a=3aStream.md)
