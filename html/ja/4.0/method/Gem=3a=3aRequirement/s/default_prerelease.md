# Gem::Requirement.default_prerelease

### def Gem::Requirement.default_prerelease -> Gem::Requirement
{: since="2.7.0"}

`">= 0.a"` を条件とする [Gem::Requirement](../../../class/Gem=3a=3aRequirement.md) のインスタンスを返します。

[Gem::Requirement.default](../../../method/Gem=3a=3aRequirement/s/default.md) と異なり、プレリリースバージョンも含めた
すべてのバージョンを要求する条件になります。

```ruby title="例"
pp Gem::Requirement.default_prerelease
# => Gem::Requirement.new([">= 0.a"])
```

- **SEE** [Gem::Requirement.default](../../../method/Gem=3a=3aRequirement/s/default.md)
