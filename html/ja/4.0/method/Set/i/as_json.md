# Set#as_json

### def as_json(*args) -> Hash
{: since="2.7.0"}

`self` を JSON 形式の文字列に変換する際に使う、中間表現となるハッシュに変換して返します。
[Set#to_json](../../../method/Set/i/to_json.md) が内部で使用しています。

ハッシュには、[JSON.create_id](../../../method/JSON/s/create_id.md) をキーとしてクラス名が、`'a'` に要素の配列が入ります。

- **param** `args` -- 無視されます。

```ruby title="例"
require 'json/add/set'

hash = Set[1, 2, 3].as_json
p hash['json_class'] # => "Set"
p hash['a']          # => [1, 2, 3]
```

- **SEE** [Set#to_json](../../../method/Set/i/to_json.md), [Set.json_create](../../../method/Set/s/json_create.md)
