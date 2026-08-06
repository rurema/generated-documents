# DateTime.strptime

### def DateTime.strptime(str = '-4712-01-01T00:00:00+00:00', format = '%FT%T%z', start = Date::ITALY) -> DateTime

与えられた雛型で日時表現を解析し、その情報に基づいて DateTime オブジェクトを生成します。

- **param** `str` -- 日時をあらわす文字列
- **param** `format` -- 書式
- **param** `start` -- グレゴリオ暦をつかい始めた日をあらわすユリウス日
- **raise** `ArgumentError` -- 正しくない日時になる組み合わせである場合に発生します。

```ruby title="例"
require 'date'
p DateTime.strptime('2001-02-03T12:13:14Z').to_s
# => "2001-02-03T12:13:14+00:00"
```

- **SEE** [Date.strptime](../../../method/Date/s/strptime.md), [DateTime._strptime](../../../method/DateTime/s/_strptime.md), [man:strptime(3)], [Date#strftime](../../../method/Date/i/strftime.md)
