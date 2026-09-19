# Gem::Specification#conflicts

### def conflicts -> {Gem::Specification => [object]}
{: since="1.9.3"}

現在ロードされている仕様書との間で発生しうる依存関係の競合を返します。

キーが競合する [Gem::Specification](../../../class/Gem=3a=3aSpecification.md)、値がその競合の原因となった依存関係
([Gem::Dependency](../../../class/Gem=3a=3aDependency.md) や [Gem::Requirement](../../../class/Gem=3a=3aRequirement.md))の配列であるハッシュを返します。
競合が無い場合は空のハッシュを返します。

```ruby title="例"
spec = Gem::Specification.new { |s| s.name = "rfoo"; s.version = "1.0" }
p spec.conflicts   # => {}
```

- **SEE** [Gem::Specification#has_conflicts?](../../../method/Gem=3a=3aSpecification/i/has_conflicts=3f.md)
