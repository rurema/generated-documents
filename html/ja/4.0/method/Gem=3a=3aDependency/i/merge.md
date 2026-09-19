# Gem::Dependency#merge

### def merge(other) -> Gem::Dependency
{: since="1.9.3"}

`self` と other の条件をマージした、新しい [Gem::Dependency](../../../class/Gem=3a=3aDependency.md) を返します。

other の [Gem::Dependency#requirement](../../../method/Gem=3a=3aDependency/i/requirement.md) が [Gem::Requirement.default](../../../method/Gem=3a=3aRequirement/s/default.md) と等しい場合は
`self` の条件を、`self` の条件が `Gem::Requirement.default` と等しい場合は other の条件を、
それ以外の場合は両方の条件を連結したものを持つ、新しい `Gem::Dependency` を返します。

- **param** `other` -- マージする [Gem::Dependency](../../../class/Gem=3a=3aDependency.md) を指定します。
- **raise** `ArgumentError` -- `self` と other の [Gem::Dependency#name](../../../method/Gem=3a=3aDependency/i/name.md) が異なる場合に発生します。

```ruby title="例"
dep1 = Gem::Dependency.new("rake", "< 5.0")
dep2 = Gem::Dependency.new("rake", ">= 1.9")
p dep1.merge(dep2)
# => <Gem::Dependency type=:runtime name="rake" requirements="< 5.0, >= 1.9">
```
