# Exception#as_json

### def as_json(*args) -> Hash
{: since="1.9.3"}

`self` を JSON 形式の文字列に変換する際に使う、中間表現となるハッシュに変換して返します。
[Exception#to_json](../../../method/Exception/i/to_json.md) が内部で使用しています。

ハッシュには、[JSON.create_id](../../../method/JSON/s/create_id.md) をキーとしてクラス名が、`'m'` にメッセージが、
`'b'` にバックトレースが入ります。

- **param** `args` -- 無視されます。

```ruby title="例"
require 'json/add/exception'

hash = Exception.new('Foo').as_json
p hash['json_class'] # => "Exception"
p hash['m']           # => "Foo"
p hash['b']           # => nil
```

- **SEE** [Exception#to_json](../../../method/Exception/i/to_json.md), [Exception.json_create](../../../method/Exception/s/json_create.md)
