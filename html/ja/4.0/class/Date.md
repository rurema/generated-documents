# class Date < Object

日付を表すクラスです。

`Date` は時刻の情報を含みません。時刻を含んだ日付は [Time](../class/Time.md) で表せます。

### 簡単なつかいかた

```ruby title="例"
require 'date'

a = Date.new(1993, 2, 24)
b = Date.parse('1993-02-24')
b += 10

p b - a          # => 10
p b.year         # => 1993
p b.strftime('%a') # => "Sat"

yesterday = Date.today - 1
```

### 用語の定義

いくつか用語の定義は、ISO 8601、および JIS X 0301 に基づきます。

#### 暦日付

暦日付は、暦年、暦月、および暦月の中の序数によって指定される特定の日の日付です。

つまり、ごく当たり前の年月日による日付です。

#### 年間通算日 (年日付)

年間通算日 (年日付) は、暦年、および暦年の中の序数によって指定される特定の日の日付です。

#### 暦週日付

暦週日付は、暦週と暦年中の序数による日付です。

暦週は、暦年中の序数によって指定される特定の7日の期間であり、月曜から始まります。その年の第1暦週は、最初の木曜日を含む週とします。これは、
1月4日を含む週と同じです。

#### ユリウス日

ユリウス日は紀元前4713年1月1日 (ユリウス暦) 正午 (グリニッジ平均時) を暦元とした通日 (経過日数) です。

この文書で、天文学的なユリウス日とは、本来のユリウス日と同じものです。
また、年代学的なユリウス日とは、地方時における零時を一日の始まりとする流儀です。

この文書で、単に「ユリウス日」といった場合、それは本来のユリウス日でなく、「年代学的なユリウス日」を意味しています。

#### 修正ユリウス日

修正ユリウス日は西暦1858年11月17日 (グレゴリオ暦) 正子/零時 (協定世界時) を暦元とした通日 (経過日数) です。

この文書で、天文学的な修正ユリウス日とは、本来の修正ユリウス日と同じものです。また、年代学的な修正ユリウス日とは、地方時における零時を一日の始まりとする流儀です。

この文書で、単に「修正ユリウス日」といった場合、それは本来の修正ユリウス日でなく、「年代学的な修正ユリウス日」を意味しています。

## Class Methods

- [_httpdate](../method/Date/s/_httpdate.md)
- [_iso8601](../method/Date/s/_iso8601.md)
- [_jisx0301](../method/Date/s/_jisx0301.md)
- [_parse](../method/Date/s/_parse.md)
- [_rfc2822](../method/Date/s/_rfc2822.md)
- [_rfc822](../method/Date/s/_rfc822.md)
- [_rfc3339](../method/Date/s/_rfc3339.md)
- [_strptime](../method/Date/s/_strptime.md)
- [_xmlschema](../method/Date/s/_xmlschema.md)
- [civil](../method/Date/s/civil.md)
- [new](../method/Date/s/new.md)
- [commercial](../method/Date/s/commercial.md)
- [gregorian_leap?](../method/Date/s/gregorian_leap=3f.md)
- [leap?](../method/Date/s/leap=3f.md)
- [httpdate](../method/Date/s/httpdate.md)
- [iso8601](../method/Date/s/iso8601.md)
- [jd](../method/Date/s/jd.md)
- [jisx0301](../method/Date/s/jisx0301.md)
- [json_create](../method/Date/s/json_create.md)
- [julian_leap?](../method/Date/s/julian_leap=3f.md)
- [ordinal](../method/Date/s/ordinal.md)
- [parse](../method/Date/s/parse.md)
- [rfc2822](../method/Date/s/rfc2822.md)
- [rfc822](../method/Date/s/rfc822.md)
- [rfc3339](../method/Date/s/rfc3339.md)
- [strptime](../method/Date/s/strptime.md)
- [today](../method/Date/s/today.md)
- [valid_civil?](../method/Date/s/valid_civil=3f.md)
- [valid_date?](../method/Date/s/valid_date=3f.md)
- [valid_commercial?](../method/Date/s/valid_commercial=3f.md)
- [valid_jd?](../method/Date/s/valid_jd=3f.md)
- [valid_ordinal?](../method/Date/s/valid_ordinal=3f.md)
- [xmlschema](../method/Date/s/xmlschema.md)

## Instance Methods

- [+](../method/Date/i/=2b.md)
- [-](../method/Date/i/=2d.md)
- [<<](../method/Date/i/=3c=3c.md)
- [<=>](../method/Date/i/=3c=3d=3e.md)
- [===](../method/Date/i/=3d=3d=3d.md)
- [>>](../method/Date/i/=3e=3e.md)
- [ajd](../method/Date/i/ajd.md)
- [amjd](../method/Date/i/amjd.md)
- [asctime](../method/Date/i/asctime.md)
- [ctime](../method/Date/i/ctime.md)
- [cwday](../method/Date/i/cwday.md)
- [cweek](../method/Date/i/cweek.md)
- [cwyear](../method/Date/i/cwyear.md)
- [day](../method/Date/i/day.md)
- [mday](../method/Date/i/mday.md)
- [deconstruct_keys](../method/Date/i/deconstruct_keys.md)
- [downto](../method/Date/i/downto.md)
- [england](../method/Date/i/england.md)
- [friday?](../method/Date/i/friday=3f.md)
- [gregorian](../method/Date/i/gregorian.md)
- [gregorian?](../method/Date/i/gregorian=3f.md)
- [httpdate](../method/Date/i/httpdate.md)
- [iso8601](../method/Date/i/iso8601.md)
- [italy](../method/Date/i/italy.md)
- [jd](../method/Date/i/jd.md)
- [jisx0301](../method/Date/i/jisx0301.md)
- [julian](../method/Date/i/julian.md)
- [julian?](../method/Date/i/julian=3f.md)
- [ld](../method/Date/i/ld.md)
- [leap?](../method/Date/i/leap=3f.md)
- [mjd](../method/Date/i/mjd.md)
- [mon](../method/Date/i/mon.md)
- [month](../method/Date/i/month.md)
- [monday?](../method/Date/i/monday=3f.md)
- [new_start](../method/Date/i/new_start.md)
- [next](../method/Date/i/next.md)
- [succ](../method/Date/i/succ.md)
- [next_day](../method/Date/i/next_day.md)
- [next_month](../method/Date/i/next_month.md)
- [next_year](../method/Date/i/next_year.md)
- [prev_day](../method/Date/i/prev_day.md)
- [prev_month](../method/Date/i/prev_month.md)
- [prev_year](../method/Date/i/prev_year.md)
- [rfc2822](../method/Date/i/rfc2822.md)
- [rfc822](../method/Date/i/rfc822.md)
- [rfc3339](../method/Date/i/rfc3339.md)
- [saturday?](../method/Date/i/saturday=3f.md)
- [start](../method/Date/i/start.md)
- [step](../method/Date/i/step.md)
- [strftime](../method/Date/i/strftime.md)
- [sunday?](../method/Date/i/sunday=3f.md)
- [thursday?](../method/Date/i/thursday=3f.md)
- [to_date](../method/Date/i/to_date.md)
- [to_datetime](../method/Date/i/to_datetime.md)
- [to_json](../method/Date/i/to_json.md)
- [to_s](../method/Date/i/to_s.md)
- [to_time](../method/Date/i/to_time.md)
- [tuesday?](../method/Date/i/tuesday=3f.md)
- [upto](../method/Date/i/upto.md)
- [wday](../method/Date/i/wday.md)
- [wednesday?](../method/Date/i/wednesday=3f.md)
- [xmlschema](../method/Date/i/xmlschema.md)
- [yday](../method/Date/i/yday.md)
- [year](../method/Date/i/year.md)

## Constants

- [ENGLAND](../method/Date/c/ENGLAND.md)
- [GREGORIAN](../method/Date/c/GREGORIAN.md)
- [ITALY](../method/Date/c/ITALY.md)
- [JULIAN](../method/Date/c/JULIAN.md)
