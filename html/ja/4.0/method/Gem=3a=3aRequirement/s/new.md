# Gem::Requirement.new

### def Gem::Requirement.new(requirements) -> Gem::Requirement

[Gem::Requirement](../../../class/Gem=3a=3aRequirement.md) のインスタンスを作成します。

- **param** `requirements` -- 文字列か配列か [Gem::Version](../../../class/Gem=3a=3aVersion.md) のインスタンスを指定します。

```ruby
pp Gem::Requirement.new("~> 3.2.1")
# => Gem::Requirement.new(["~> 3.2.1"])
```

- **SEE** [Gem::Requirement.parse](../../../method/Gem=3a=3aRequirement/s/parse.md), [Gem::Requirement.create](../../../method/Gem=3a=3aRequirement/s/create.md)
