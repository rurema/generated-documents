# Gem::Specification.all

### def Gem::Specification.all -> [Gem::Specification]
{: since="1.9.3"}

既知の全ての仕様書を返します。

このメソッドの利用は推奨されません。`Gem::Specification` は `Enumerable` を
extend しているため、代わりに [Gem::Specification.each](../../../method/Gem=3a=3aSpecification/s/each.md) などの
`Enumerable` のメソッドを使ってください。

- **SEE** [Gem::Specification.each](../../../method/Gem=3a=3aSpecification/s/each.md)
