# Gem::Specification#name_tuple

### def name_tuple -> Gem::NameTuple
{: since="2.0.0"}

`self` を表す `Gem::NameTuple` を返します。

```ruby title="例"
spec = Gem::Specification.new { |s| s.name = "rfoo"; s.version = "1.0" }
p spec.name_tuple         # => #<Gem::NameTuple rfoo, 1.0, ruby>
p spec.name_tuple.class   # => Gem::NameTuple
```

- **SEE** [Gem::Specification#full_name](../../../method/Gem=3a=3aSpecification/i/full_name.md)
