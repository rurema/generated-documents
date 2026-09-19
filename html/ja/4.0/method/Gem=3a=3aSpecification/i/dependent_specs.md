# Gem::Specification#dependent_specs

### def dependent_specs -> [Gem::Specification]
{: since="1.9.3"}

`self` の RUNTIME 依存性を満たす仕様書をまとめて返します。

```ruby title="例"
spec = Gem::Specification.new { |s| s.name = "rfoo"; s.version = "1.0" }
p spec.dependent_specs   # => []
```

- **SEE** [Gem::Specification#dependencies](../../../method/Gem=3a=3aSpecification/i/dependencies.md), [Gem::Specification#runtime_dependencies](../../../method/Gem=3a=3aSpecification/i/runtime_dependencies.md)
