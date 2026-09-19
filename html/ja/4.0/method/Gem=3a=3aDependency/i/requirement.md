# Gem::Dependency#requirement

### def requirement -> Gem::Requirement
{: since="1.9.2"}

`self` が要求するバージョンの条件を、[Gem::Requirement](../../../class/Gem=3a=3aRequirement.md) のインスタンスで返します。

```ruby title="例"
dep = Gem::Dependency.new("rake", "= 1.0")
pp dep.requirement
# => Gem::Requirement.new(["= 1.0"])
```
