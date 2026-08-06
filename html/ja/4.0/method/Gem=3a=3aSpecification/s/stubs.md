# Gem::Specification.stubs

### def Gem::Specification.stubs -> Array

インストールされている全ての Gem の情報を、Gem::StubSpecification（gemspec ファイルの内容を遅延読み込みする軽量なスタブオブジェクト）の配列として返します。

[Gem::Specification.list](../../../method/Gem=3a=3aSpecification/s/list.md) とは異なり、gemspec ファイルの内容を実際に読み込まずにスタブを生成するため、高速に動作します。

```ruby title="例"
p Gem::Specification.stubs.first(3).map(&:class)
# => [Gem::StubSpecification, Gem::StubSpecification, Gem::StubSpecification]

p Gem::Specification.stubs.first.name
# => "abbrev"
```

- **SEE** [Gem::Specification.list](../../../method/Gem=3a=3aSpecification/s/list.md), [Gem::Specification.stubs_for](../../../method/Gem=3a=3aSpecification/s/stubs_for.md)
