# Gem::Dependency#matches_spec?

### def matches_spec?(spec) -> bool
{: since="1.9.3"}

`self` が spec にマッチするかどうかを返します。

[Gem::Dependency#name](../../../method/Gem=3a=3aDependency/i/name.md) が spec の名前と一致せず、または spec のバージョンが `self` の条件を
満たさない場合は false を返します。[Gem::Dependency#match?](../../../method/Gem=3a=3aDependency/i/match=3f.md) と異なり、`self` が
プレリリース版を要求していなくても、spec 自体がプレリリース版であれば true を返すことがあります。

- **param** `spec` -- マッチさせたい [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) のインスタンスを指定します。

```ruby title="例"
dep = Gem::Dependency.new("rake", "~> 1.0")

spec1 = Gem::Specification.new("rake", "1.0.1")
p dep.matches_spec?(spec1) # => true

spec2 = Gem::Specification.new("rake", "2.0.0")
p dep.matches_spec?(spec2) # => false
```

- **SEE** [Gem::Dependency#match?](../../../method/Gem=3a=3aDependency/i/match=3f.md)
