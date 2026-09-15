# DateTime#as_json

### def as_json(*args) -> Hash
{: since="1.9.3"}

`self` を JSON 形式の文字列に変換する際に使う、中間表現となるハッシュに変換して返します。
[DateTime#to_json](../../../method/DateTime/i/to_json.md) が内部で使用しています。

ハッシュには、[JSON.create_id](../../../method/JSON/s/create_id.md) をキーとしてクラス名が、`'y'` に年([Date#year](../../../method/Date/i/year.md))、
`'m'` に月([Date#month](../../../method/Date/i/month.md))、`'d'` に日([Date#day](../../../method/Date/i/day.md))、`'H'` に時
([DateTime#hour](../../../method/DateTime/i/hour.md))、`'M'` に分([DateTime#min](../../../method/DateTime/i/min.md))、`'S'` に秒
([DateTime#sec](../../../method/DateTime/i/sec.md))、`'of'` に UTC からのオフセット([DateTime#offset](../../../method/DateTime/i/offset.md) の
返り値を文字列化したもの)、`'sg'` に改暦日([Date#start](../../../method/Date/i/start.md))が入ります。

- **param** `args` -- 無視されます。

```ruby title="例"
require 'json/add/date_time'

hash = DateTime.new(2024, 1, 2, 3, 4, 5).as_json
p hash['json_class'] # => "DateTime"
p hash['y']           # => 2024
p hash['H']           # => 3
p hash['of']          # => "0/1"
p hash['sg']          # => 2299161.0
```

- **SEE** [DateTime#to_json](../../../method/DateTime/i/to_json.md), [DateTime.json_create](../../../method/DateTime/s/json_create.md)
