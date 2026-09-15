# Psych::Nodes::Node#alias?

### def alias? -> bool
{: since="2.6.0"}

`self` が [Psych::Nodes::Alias](../../../class/Psych=3a=3aNodes=3a=3aAlias.md) を表すノードかどうかを返します。

`Psych::Nodes::Node` では常に false を返します。`Psych::Nodes::Alias` ではこのメソッドを override しており、常に true を返します。

- **SEE** [Psych::Nodes::Alias](../../../class/Psych=3a=3aNodes=3a=3aAlias.md)
