# Regexp#as_json

### def as_json(*args) -> Hash

`self` を JSON 形式の文字列に変換する際に使う、中間表現となるハッシュに変換して返します。
[Regexp#to_json](../../../method/Regexp/i/to_json.md) が内部で使用しています。

ハッシュには、[JSON.create_id](../../../method/JSON/s/create_id.md) をキーとしてクラス名が、`'o'` に
オプションを表す整数([Regexp#options](../../../method/Regexp/i/options.md) の返り値)が、`'s'` にパターン文字列
([Regexp#source](../../../method/Regexp/i/source.md) の返り値)が入ります。

- **param** `args` -- 無視されます。

```ruby title="例"
require 'json/add/regexp'

hash = /foo/i.as_json
p hash['json_class'] # => "Regexp"
p hash['o']           # => 1
p hash['s']           # => "foo"
```

- **SEE** [Regexp#to_json](../../../method/Regexp/i/to_json.md), [Regexp.json_create](../../../method/Regexp/s/json_create.md)
