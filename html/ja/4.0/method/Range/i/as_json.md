# Range#as_json

### def as_json(*args) -> Hash

`self` を JSON 形式の文字列に変換する際に使う、中間表現となるハッシュに変換して返します。
[Range#to_json](../../../method/Range/i/to_json.md) が内部で使用しています。

ハッシュには、[JSON.create_id](../../../method/JSON/s/create_id.md) をキーとしてクラス名が、`'a'` に
始端・終端・終端を含むかどうかの 3 要素からなる配列(`[first, last, exclude_end?]`)が入ります。

- **param** `args` -- 無視されます。

```ruby title="例"
require 'json/add/range'

hash = (1..5).as_json
p hash['json_class'] # => "Range"
p hash['a']           # => [1, 5, false]
```

- **SEE** [Range#to_json](../../../method/Range/i/to_json.md), [Range.json_create](../../../method/Range/s/json_create.md)
