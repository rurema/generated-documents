# Gem::Specification#build_args

### def build_args -> [String]
{: since="2.0.0"}

この gem をインストールした際に使われたビルド引数を返します。

ビルド情報を保存したファイルが存在しない場合は空の配列を返します。

```ruby title="例"
spec = Gem::Specification.new { |s| s.name = "rfoo"; s.version = "1.0" }
p spec.build_args   # => []
```
