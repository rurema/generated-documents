# Gem::Platform.match_spec?

### def Gem::Platform.match_spec?(spec) -> bool

spec のプラットフォームが現在の環境にインストール可能かどうかを返します。

[Gem::Platform.match_gem?](../../../method/Gem=3a=3aPlatform/s/match_gem=3f.md) に、spec の [Gem::Specification#platform](../../../method/Gem=3a=3aSpecification/i/platform.md) と
[Gem::Specification#name](../../../method/Gem=3a=3aSpecification/i/name.md) を渡した結果を返します。

- **param** `spec` -- 判定したい [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) のインスタンスを指定します。

```ruby title="例"
spec = Gem::Specification.new("rake", "1.0.0")
spec.platform = Gem::Platform::RUBY
p Gem::Platform.match_spec?(spec) # => true
```

- **SEE** [Gem::Platform.match_gem?](../../../method/Gem=3a=3aPlatform/s/match_gem=3f.md)
