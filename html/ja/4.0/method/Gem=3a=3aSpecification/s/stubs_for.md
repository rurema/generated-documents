# Gem::Specification.stubs_for

### def Gem::Specification.stubs_for(name) -> Array

指定した名前を持つ Gem の Gem::StubSpecification の配列を返します。

[Gem::Specification.stubs](../../../method/Gem=3a=3aSpecification/s/stubs.md) と同様、gemspec ファイルの内容を遅延読み込みするスタブオブジェクトを返すため高速に動作します。

- **param** `name` -- Gem の名前を文字列で指定します。

```ruby title="例"
p Gem::Specification.stubs_for("abbrev").map(&:name)
# => ["abbrev"]
```

- **SEE** [Gem::Specification.stubs](../../../method/Gem=3a=3aSpecification/s/stubs.md)
