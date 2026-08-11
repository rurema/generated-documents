# Gem::Requirement.create

### def Gem::Requirement.create(input) -> Gem::Requirement

[Gem::Requirement](../../../class/Gem=3a=3aRequirement.md) のインスタンスを作成するためのファクトリメソッドです。

- **param** `input` -- 文字列か配列か [Gem::Requirement](../../../class/Gem=3a=3aRequirement.md), [Gem::Version](../../../class/Gem=3a=3aVersion.md) のインスタンスのいずれかを指定します。

- **return** -- 上記以外の値を input に指定するとデフォルト値を返します。

```ruby
pp Gem::Requirement.create("~> 3.2.1")
# => Gem::Requirement.new(["~> 3.2.1"])
```

- **SEE** [Gem::Requirement.new](../../../method/Gem=3a=3aRequirement/s/new.md), [Gem::Requirement.default](../../../method/Gem=3a=3aRequirement/s/default.md)
