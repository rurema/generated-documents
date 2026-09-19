# Gem::Specification#metadata=

### def metadata=(metadata)
{: since="2.0.0"}

この gem のメタデータをセットします。

メタデータは gem の作者以外の利用者にも有用な追加情報です。
キーと値がともに文字列である [Hash](../../../class/Hash.md) を指定します。キーは最大 128 バイト、
値は最大 1024 バイトまでで、全て UTF-8 文字列でなければなりません。
ホームページやリポジトリ、changelog、issue tracker などの URI を指定するのに使えます。

- **param** `metadata` -- キーと値がいずれも文字列の [Hash](../../../class/Hash.md) を指定します。

```ruby title="例"
spec = Gem::Specification.new { |s| s.name = "rfoo"; s.version = "1.0" }
spec.metadata = { "source_code_uri" => "https://example.com/rfoo" }
p spec.metadata["source_code_uri"]   # => "https://example.com/rfoo"
```

- **SEE** [Gem::Specification#metadata](../../../method/Gem=3a=3aSpecification/i/metadata.md)
