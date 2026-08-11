# Time.xmlschema

### def Time.xmlschema(date) -> Time
### def Time.iso8601(date) -> Time

XML Schema で定義されている dateTime として
date をパースして [Time](../../../class/Time.md) オブジェクトに変換します。

date がISO 8601で定義されている形式に準拠していない、または [Time](../../../class/Time.md) クラスが指定された日時を表現できないときに
[ArgumentError](../../../class/ArgumentError.md) が発生します。

[Time](../../../class/Time.md) オブジェクトを ISO8601 形式の文字列にフォーマットするインスタンスメソッド [Time#iso8601](../../../method/Time/i/iso8601.md), [Time#xmlschema](../../../method/Time/i/xmlschema.md) もあります。

- **param** `date` -- XML Schema で定義されている dateTime としてパースされる文字列を指定します。

- **raise** `ArgumentError` -- date がISO 8601で定義されている形式に準拠していない、または [Time](../../../class/Time.md) クラスが指定された日時を表現できないときに発生します。
使用例

```ruby
require 'time'

iso8601_time = '2008-08-31T12:34:56+09:00'
t = Time.iso8601(iso8601_time)
p t # => 2008-08-31 12:34:56 +0900
p t.kind_of?(Time) # => true

begin
  non_iso8601_time = '2008-08-31A12:34:56+09:00'
  Time.iso8601(non_iso8601_time)
rescue ArgumentError => err
  puts err # => invalid xmlschema format: "2008-08-31A12:34:56+09:00"
end
```

- **SEE** [Time#xmlschema](../../../method/Time/i/xmlschema.md), [Time#iso8601](../../../method/Time/i/iso8601.md)
