# Psych::Nodes::Node#document?

### def document? -> bool

`self` が [Psych::Nodes::Document](../../../class/Psych=3a=3aNodes=3a=3aDocument.md) を表すノードかどうかを返します。

`Psych::Nodes::Node` では常に false を返します。`Psych::Nodes::Document` ではこのメソッドを override しており、常に true を返します。

- **SEE** [Psych::Nodes::Document](../../../class/Psych=3a=3aNodes=3a=3aDocument.md)
