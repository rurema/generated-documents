# Complex#as_json

### def as_json(*args) -> Hash
{: since="1.9.3"}

`self` を JSON 形式の文字列に変換する際に使う、中間表現となるハッシュに変換して返します。
[Complex#to_json](../../../method/Complex/i/to_json.md) が内部で使用しています。

ハッシュには、[JSON.create_id](../../../method/JSON/s/create_id.md) をキーとしてクラス名が、`'r'` に実部が、
`'i'` に虚部が入ります。

- **param** `args` -- 無視されます。

```ruby title="例"
require 'json/add/complex'

hash = Complex(2, 3).as_json
p hash['json_class'] # => "Complex"
p hash['r']           # => 2
p hash['i']           # => 3
```

- **SEE** [Complex#to_json](../../../method/Complex/i/to_json.md), [Complex.json_create](../../../method/Complex/s/json_create.md)
