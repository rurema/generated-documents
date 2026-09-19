# Gem::Dependency#identity

### def identity -> Symbol
{: since="2.7.0"}

`self` の依存関係の種類を表すシンボルを返します。

`self` がプレリリース版を要求しており、かつ [Gem::Dependency#specific?](../../../method/Gem=3a=3aDependency/i/specific=3f.md) が真であれば `:complete` を、
プレリリース版を要求しているが `specific?` が偽であれば `:abs_latest` を返します。
プレリリース版を要求しておらず、[Gem::Dependency#latest_version?](../../../method/Gem=3a=3aDependency/i/latest_version=3f.md) が真であれば `:latest` を、
それ以外の場合は `:released` を返します。

```ruby title="例"
p Gem::Dependency.new("rake").identity           # => :latest
p Gem::Dependency.new("rake", ">= 1.0").identity # => :released
```

- **SEE** [Gem::Dependency#prerelease?](../../../method/Gem=3a=3aDependency/i/prerelease=3f.md), [Gem::Dependency#specific?](../../../method/Gem=3a=3aDependency/i/specific=3f.md), [Gem::Dependency#latest_version?](../../../method/Gem=3a=3aDependency/i/latest_version=3f.md)
