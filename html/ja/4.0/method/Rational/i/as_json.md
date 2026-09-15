# Rational#as_json

### def as_json(*args) -> Hash
{: since="1.9.3"}

`self` を JSON 形式の文字列に変換する際に使う、中間表現となるハッシュに変換して返します。
[Rational#to_json](../../../method/Rational/i/to_json.md) が内部で使用しています。

ハッシュには、[JSON.create_id](../../../method/JSON/s/create_id.md) をキーとしてクラス名が、`'n'` に分子が、
`'d'` に分母が入ります。

- **param** `args` -- 無視されます。

```ruby title="例"
require 'json/add/rational'

hash = Rational(2, 3).as_json
p hash['json_class'] # => "Rational"
p hash['n']           # => 2
p hash['d']           # => 3
```

- **SEE** [Rational#to_json](../../../method/Rational/i/to_json.md), [Rational.json_create](../../../method/Rational/s/json_create.md)
