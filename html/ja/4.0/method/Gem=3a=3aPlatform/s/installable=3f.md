# Gem::Platform.installable?

### def Gem::Platform.installable?(spec) -> bool
{: since="2.1.0"}

spec が現在の環境にインストール可能かどうかを返します。

spec が `installable_platform?` に応答する場合はその結果を、応答しない場合は
[Gem::Platform.match_spec?](../../../method/Gem=3a=3aPlatform/s/match_spec=3f.md) の結果を返します。

- **param** `spec` -- 判定したい [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) のインスタンスを指定します。

```ruby title="例"
spec = Gem::Specification.new("rake", "1.0.0")
spec.platform = Gem::Platform::RUBY
p Gem::Platform.installable?(spec) # => true
```

- **SEE** [Gem::Platform.match_spec?](../../../method/Gem=3a=3aPlatform/s/match_spec=3f.md)
