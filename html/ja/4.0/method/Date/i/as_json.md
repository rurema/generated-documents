# Date#as_json

### def as_json(*args) -> Hash
{: since="1.9.3"}

`self` を JSON 形式の文字列に変換する際に使う、中間表現となるハッシュに変換して返します。
[Date#to_json](../../../method/Date/i/to_json.md) が内部で使用しています。

ハッシュには、[JSON.create_id](../../../method/JSON/s/create_id.md) をキーとしてクラス名が、`'y'` に年([Date#year](../../../method/Date/i/year.md))、
`'m'` に月([Date#month](../../../method/Date/i/month.md))、`'d'` に日([Date#day](../../../method/Date/i/day.md))、`'sg'` に改暦日
([Date#start](../../../method/Date/i/start.md))が入ります。

- **param** `args` -- 無視されます。

```ruby title="例"
require 'json/add/date'

hash = Date.new(2024, 1, 2).as_json
p hash['json_class'] # => "Date"
p hash['y']           # => 2024
p hash['m']           # => 1
p hash['d']           # => 2
p hash['sg']          # => 2299161.0
```

- **SEE** [Date#to_json](../../../method/Date/i/to_json.md), [Date.json_create](../../../method/Date/s/json_create.md)
