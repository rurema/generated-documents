# Psych::Nodes::Node#scalar?

### def scalar? -> bool

`self` が [Psych::Nodes::Scalar](../../../class/Psych=3a=3aNodes=3a=3aScalar.md) を表すノードかどうかを返します。

`Psych::Nodes::Node` では常に false を返します。`Psych::Nodes::Scalar` ではこのメソッドを override しており、常に true を返します。

- **SEE** [Psych::Nodes::Scalar](../../../class/Psych=3a=3aNodes=3a=3aScalar.md)
