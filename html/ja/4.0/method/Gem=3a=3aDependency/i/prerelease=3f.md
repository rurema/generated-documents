# Gem::Dependency#prerelease?

### def prerelease? -> bool
{: since="1.9.2"}

`self` がプレリリース版を要求するかどうかを返します。

[Gem::Dependency#prerelease=](../../../method/Gem=3a=3aDependency/i/prerelease=3d.md) で明示的に true が設定されているか、
[Gem::Dependency#requirement](../../../method/Gem=3a=3aDependency/i/requirement.md) が [Gem::Requirement#prerelease?](../../../method/Gem=3a=3aRequirement/i/prerelease=3f.md) を満たす場合に true を返します。

```ruby title="例"
dep = Gem::Dependency.new("rake", ">= 1.0")
p dep.prerelease?    # => false

dep.prerelease = true
p dep.prerelease?    # => true
```
