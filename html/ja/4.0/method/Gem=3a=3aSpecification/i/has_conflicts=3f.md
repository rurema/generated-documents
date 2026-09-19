# Gem::Specification#has_conflicts?

### def has_conflicts? -> bool
{: since="2.3.0"}

現在ロードされている仕様書との間で発生しうる依存関係の競合があれば true を返します。

```ruby title="例"
spec = Gem::Specification.new { |s| s.name = "rfoo"; s.version = "1.0" }
p spec.has_conflicts?   # => false
```

- **SEE** [Gem::Specification#conflicts](../../../method/Gem=3a=3aSpecification/i/conflicts.md)
