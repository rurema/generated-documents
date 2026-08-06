# class Time < Object

時刻を表すクラスです。

[Time.now](../method/Time/s/now.md) は現在の時刻を返します。
[File.mtime](../method/File/s/mtime.md) などが返すファイルのタイムスタンプは Time
オブジェクトです。

Time オブジェクトは時刻を起算時からの経過秒数で保持しています。
起算時は協定世界時(UTC、もしくはその旧称から GMT とも表記されます) の
1970年1月1日午前0時です。なお、うるう秒を勘定するかどうかはシステムによります。

Time オブジェクトが格納可能な時刻の範囲は環境によって異なっていましたが、
Ruby 1.9.2 からは OS の制限の影響を受けません。

また、Time オブジェクトは協定世界時と地方時のどちらのタイムゾーンを使用するかのフラグを内部に保持しています。
タイムゾーンのフラグは Marshal データに保持されます。

```ruby
p Marshal.load(Marshal.dump(Time.now.gmtime)).zone
# => "UTC"
```

[time](../library/time.md) ライブラリによって、[Time.parse](../method/Time/s/parse.md), [Time.rfc2822](../method/Time/s/rfc2822.md), [Time.httpdate](../method/Time/s/httpdate.md), [Time.iso8601](../method/Time/s/iso8601.md) 等が拡張されます。

Ruby 1.9.2 以降の Time クラスのデザインの詳細は
<http://www.a-k-r.org/pub/sapporo-rubykaigi-02-akr-2009.pdf> や「APIデザインケーススタディ」(<https://gihyo.jp/book/2016/978-4-7741-7802-8>)
の第4章を参照してください。

[man:localtime(3)] も参照してください。

### C 言語との違いに注意

C 言語の tm 構造体とは異なり、month は 1 月に対して 1 を返し、year は 1998 年に対して 1998 を返します。また、
yday は 1 から数えます。

## Class Methods

- [at](../method/Time/s/at.md)
- [gm](../method/Time/s/gm.md)
- [utc](../method/Time/s/utc.md)
- [httpdate](../method/Time/s/httpdate.md)
- [iso8601](../method/Time/s/iso8601.md)
- [xmlschema](../method/Time/s/xmlschema.md)
- [json_create](../method/Time/s/json_create.md)
- [local](../method/Time/s/local.md)
- [mktime](../method/Time/s/mktime.md)
- [new](../method/Time/s/new.md)
- [now](../method/Time/s/now.md)
- [parse](../method/Time/s/parse.md)
- [rfc2822](../method/Time/s/rfc2822.md)
- [rfc822](../method/Time/s/rfc822.md)
- [strptime](../method/Time/s/strptime.md)

## Instance Methods

- [+](../method/Time/i/=2b.md)
- [-](../method/Time/i/=2d.md)
- [<=>](../method/Time/i/=3c=3d=3e.md)
- [asctime](../method/Time/i/asctime.md)
- [ctime](../method/Time/i/ctime.md)
- [ceil](../method/Time/i/ceil.md)
- [day](../method/Time/i/day.md)
- [mday](../method/Time/i/mday.md)
- [deconstruct_keys](../method/Time/i/deconstruct_keys.md)
- [dst?](../method/Time/i/dst=3f.md)
- [isdst](../method/Time/i/isdst.md)
- [eql?](../method/Time/i/eql=3f.md)
- [floor](../method/Time/i/floor.md)
- [friday?](../method/Time/i/friday=3f.md)
- [getgm](../method/Time/i/getgm.md)
- [getutc](../method/Time/i/getutc.md)
- [getlocal](../method/Time/i/getlocal.md)
- [gmt?](../method/Time/i/gmt=3f.md)
- [utc?](../method/Time/i/utc=3f.md)
- [gmt_offset](../method/Time/i/gmt_offset.md)
- [gmtoff](../method/Time/i/gmtoff.md)
- [utc_offset](../method/Time/i/utc_offset.md)
- [gmtime](../method/Time/i/gmtime.md)
- [utc](../method/Time/i/utc.md)
- [hash](../method/Time/i/hash.md)
- [hour](../method/Time/i/hour.md)
- [httpdate](../method/Time/i/httpdate.md)
- [inspect](../method/Time/i/inspect.md)
- [iso8601](../method/Time/i/iso8601.md)
- [xmlschema](../method/Time/i/xmlschema.md)
- [localtime](../method/Time/i/localtime.md)
- [min](../method/Time/i/min.md)
- [mon](../method/Time/i/mon.md)
- [month](../method/Time/i/month.md)
- [monday?](../method/Time/i/monday=3f.md)
- [nsec](../method/Time/i/nsec.md)
- [tv_nsec](../method/Time/i/tv_nsec.md)
- [rfc2822](../method/Time/i/rfc2822.md)
- [rfc822](../method/Time/i/rfc822.md)
- [round](../method/Time/i/round.md)
- [saturday?](../method/Time/i/saturday=3f.md)
- [sec](../method/Time/i/sec.md)
- [strftime](../method/Time/i/strftime.md)
- [subsec](../method/Time/i/subsec.md)
- [sunday?](../method/Time/i/sunday=3f.md)
- [thursday?](../method/Time/i/thursday=3f.md)
- [to_a](../method/Time/i/to_a.md)
- [to_date](../method/Time/i/to_date.md)
- [to_datetime](../method/Time/i/to_datetime.md)
- [to_f](../method/Time/i/to_f.md)
- [to_i](../method/Time/i/to_i.md)
- [tv_sec](../method/Time/i/tv_sec.md)
- [to_json](../method/Time/i/to_json.md)
- [to_r](../method/Time/i/to_r.md)
- [to_s](../method/Time/i/to_s.md)
- [to_time](../method/Time/i/to_time.md)
- [tuesday?](../method/Time/i/tuesday=3f.md)
- [tv_usec](../method/Time/i/tv_usec.md)
- [usec](../method/Time/i/usec.md)
- [wday](../method/Time/i/wday.md)
- [wednesday?](../method/Time/i/wednesday=3f.md)
- [yday](../method/Time/i/yday.md)
- [year](../method/Time/i/year.md)
- [zone](../method/Time/i/zone.md)
