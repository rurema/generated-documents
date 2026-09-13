# Symbol#as_json

### def as_json(*args) -> Hash

`self` を JSON 形式の文字列に変換する際に使う、中間表現となるハッシュに変換して返します。
[Symbol#to_json](../../../method/Symbol/i/to_json.md) が内部で使用しています。

ハッシュには、[JSON.create_id](../../../method/JSON/s/create_id.md) をキーとしてクラス名が、`'s'` に `self` を文字列化した
値([Symbol#to_s](../../../method/Symbol/i/to_s.md) の返り値)が入ります。

- **param** `args` -- 無視されます。

```ruby title="例"
require 'json/add/symbol'

hash = :foo.as_json
p hash['json_class'] # => "Symbol"
p hash['s']           # => "foo"
```

- **SEE** [Symbol#to_json](../../../method/Symbol/i/to_json.md), [Symbol.json_create](../../../method/Symbol/s/json_create.md)
