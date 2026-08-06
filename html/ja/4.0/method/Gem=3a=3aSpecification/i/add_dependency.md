# Gem::Specification#add_dependency

### def add_dependency(gem, *requirements) -> [Gem::Dependency]
### def add_runtime_dependency(gem, *requirements) -> [Gem::Dependency]

この gem の RUNTIME 依存性を追加します。
実行時に必要となる gem を指定します。

```ruby
# https://github.com/rurema/bitclust/blob/v1.2.3/bitclust-core.gemspec#L25
s.add_runtime_dependency "progressbar", ">= 1.9.0", "< 2.0"
```

- **param** `gem` -- 依存する gem の名前か [Gem::Dependency](../../../class/Gem=3a=3aDependency.md) のインスタンスを指定します。

- **param** `requirements` -- バージョンの必要条件を 0 個以上指定します。デフォルトは ">= 0" です。

- **SEE** [Gem::Specification#add_development_dependency](../../../method/Gem=3a=3aSpecification/i/add_development_dependency.md), [Gem::Dependency](../../../class/Gem=3a=3aDependency.md)
