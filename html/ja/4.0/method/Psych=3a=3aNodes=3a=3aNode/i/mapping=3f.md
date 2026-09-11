# Psych::Nodes::Node#mapping?

### def mapping? -> bool

`self` が [Psych::Nodes::Mapping](../../../class/Psych=3a=3aNodes=3a=3aMapping.md) を表すノードかどうかを返します。

`Psych::Nodes::Node` では常に false を返します。`Psych::Nodes::Mapping` ではこのメソッドを override しており、常に true を返します。

- **SEE** [Psych::Nodes::Mapping](../../../class/Psych=3a=3aNodes=3a=3aMapping.md)
