# Gem::Specification.add_spec

### def Gem::Specification.add_spec(spec) -> ()

既知の仕様書の一覧に `spec` を追加します。

追加後、一覧はソートされた状態に保たれます。

- **param** `spec` -- 追加する [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を指定します。

```ruby title="例"
spec = Gem::Specification.new { |s| s.name = "rfoo_unique_test"; s.version = "1.0" }
p Gem::Specification.all_names.include?("rfoo_unique_test-1.0")   # => false
Gem::Specification.add_spec(spec)
p Gem::Specification.all_names.include?("rfoo_unique_test-1.0")   # => true
Gem::Specification.remove_spec(spec)
p Gem::Specification.all_names.include?("rfoo_unique_test-1.0")   # => false
```

- **SEE** [Gem::Specification.remove_spec](../../../method/Gem=3a=3aSpecification/s/remove_spec.md)
