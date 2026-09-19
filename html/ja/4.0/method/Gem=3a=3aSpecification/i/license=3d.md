# Gem::Specification#license=

### def license=(o)
{: since="1.9.2"}

この gem のライセンスをセットします。

SPDX ライセンス識別子を 1 つ指定します。複数のライセンスが適用される gem の場合は
[Gem::Specification#licenses=](../../../method/Gem=3a=3aSpecification/i/licenses=3d.md) を使ってください。

- **param** `o` -- ライセンスを表す SPDX ライセンス識別子の文字列を指定します。

```ruby title="例"
spec = Gem::Specification.new { |s| s.name = "rfoo"; s.version = "1.0" }
spec.license = "MIT"
p spec.license    # => "MIT"
```

- **SEE** [Gem::Specification#licenses=](../../../method/Gem=3a=3aSpecification/i/licenses=3d.md)
