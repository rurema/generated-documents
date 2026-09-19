# Gem::Specification#licenses=

### def licenses=(licenses)
{: since="1.9.2"}

この gem のライセンスをセットします。

複数のライセンスが適用される gem の場合は、[Gem::Specification#license=](../../../method/Gem=3a=3aSpecification/i/license=3d.md) とは
異なりこちらを使って各ライセンスを別々の要素として指定します。

- **param** `licenses` -- ライセンスを表す SPDX ライセンス識別子の文字列の配列を指定します。

```ruby title="例"
spec = Gem::Specification.new { |s| s.name = "rfoo"; s.version = "1.0" }
spec.licenses = ["MIT", "GPL-2.0-only"]
p spec.licenses   # => ["MIT", "GPL-2.0-only"]
p spec.license    # => "MIT"
```

- **SEE** [Gem::Specification#license=](../../../method/Gem=3a=3aSpecification/i/license=3d.md)
