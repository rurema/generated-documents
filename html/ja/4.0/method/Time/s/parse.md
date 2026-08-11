# Time.parse

### def Time.parse(date, now = Time.now) -> Time
### def Time.parse(date, now = Time.now) {|year| year } -> Time

date を [Date._parse](../../../method/Date/s/_parse.md) によってパースして [Time](../../../class/Time.md)オブジェクトに変換します。

ブロック付きで呼ばれた場合、dateの年はブロックによって変換されます。

```text
require 'time'
Time.parse(...) {|y| y < 100 ? (y >= 69 ? y + 1900 : y + 2000) : y}
```

与えられた時刻に上位の要素がなかったり壊れていた場合、nowの該当要素が使われます。

```ruby
require 'time'
time = Time.local(2019, 5, 1)
p Time.parse("12:00", time) # => 2019-05-01 12:00:00 +0900
```

下位の要素がなかったり壊れていた場合、最小値(1か0)が使われます。

- **param** `date` -- [Time](../../../class/Time.md) オブジェクトに変換可能な文字列を指定します。
- **param** `now` --  現在時刻を[Time](../../../class/Time.md) オブジェクトで指定します。
            デフォルトは[Time.now](../../../method/Time/s/now.md)となります。

- **raise** `ArgumentError` -- dateに空文字列を与えた場合、発生します。
                     なお、1.9.2より前は例外は発生せず、現在時刻を表す
                     Time のインスタンスを返していました。

```ruby
require 'time'

# 現在時刻が "Thu Nov 29 14:33:20 GMT 2001" で
# タイムゾーンがGMTとすると:
p Time.parse("16:30")   # => Thu Nov 29 16:30:00 GMT 2001
p Time.parse("7/23")    # => Mon Jul 23 00:00:00 GMT 2001
p Time.parse("2002/1")  # => Tue Jan 01 00:00:00 GMT 2002
```

[Date._parse](../../../method/Date/s/_parse.md)がdateから情報を取り出せないとき、または [Time](../../../class/Time.md) クラスが指定された日時を表現できないときに
[ArgumentError](../../../class/ArgumentError.md) が発生します。

このメソッドは他のパース用メソッドのフェイルセーフとして以下のように使用できます:

```ruby
require 'time'

Time.rfc2822(date) rescue Time.parse(date)
Time.httpdate(date) rescue Time.parse(date)
Time.xmlschema(date) rescue Time.parse(date)
```

従って [Time.parse](../../../method/Time/s/parse.md) の失敗はチェックすべきです。
