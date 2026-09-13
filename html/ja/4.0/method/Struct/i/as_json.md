# Struct#as_json

### def as_json(*args) -> Hash

`self` を JSON 形式の文字列に変換する際に使う、中間表現となるハッシュに変換して返します。
[Struct#to_json](../../../method/Struct/i/to_json.md) が内部で使用しています。

ハッシュには、[JSON.create_id](../../../method/JSON/s/create_id.md) をキーとして `self` のクラス名が、`'v'` に各メンバの値の
配列([Struct#values](../../../method/Struct/i/values.md) の返り値)が入ります。

- **param** `args` -- 無視されます。

- **raise** `JSON::JSONError` -- `self` のクラスが名前を持たない(無名の)構造体クラスの
           場合に発生します。

```ruby title="例"
require 'json/add/struct'

Person = Struct.new(:name, :age)
hash = Person.new("tanaka", 29).as_json
p hash['json_class'] # => "Person"
p hash['v']           # => ["tanaka", 29]
```

- **SEE** [Struct#to_json](../../../method/Struct/i/to_json.md), [Struct.json_create](../../../method/Struct/s/json_create.md)
