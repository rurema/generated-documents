# Gem::Dependency#specific?

### def specific? -> bool
{: since="1.9.3"}

`self` の条件が、常に最新バージョンにマッチするとは限らない場合に true を返します。

[Gem::Dependency#requirement](../../../method/Gem=3a=3aDependency/i/requirement.md) の [Gem::Requirement#specific?](../../../method/Gem=3a=3aRequirement/i/specific=3f.md) の結果をそのまま返します。

```ruby title="例"
p Gem::Dependency.new("rake", ">= 1.0").specific? # => false
p Gem::Dependency.new("rake", "= 1.0").specific?  # => true
```
