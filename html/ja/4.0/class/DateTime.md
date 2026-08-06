# class DateTime < Date

日付だけでなく時刻も扱える [Date](../class/Date.md) のサブクラスです。

DateTime は deprecated とされているため、
[Time](../class/Time.md)を使うことを推奨します。

### 簡単なつかいかた

```ruby
require 'date'

a = DateTime.new(1993, 2, 24, 12, 30, 45)
b = DateTime.parse('1993-02-24T12:30:45')
b += 10

p b - a          #=> 10
p b.year         #=> 1993
p b.strftime('%a') #=> "Sat"

yesterday = DateTime.now - 1
```

## Class Methods

- [_strptime](../method/DateTime/s/_strptime.md)
- [civil](../method/DateTime/s/civil.md)
- [new](../method/DateTime/s/new.md)
- [commercial](../method/DateTime/s/commercial.md)
- [httpdate](../method/DateTime/s/httpdate.md)
- [iso8601](../method/DateTime/s/iso8601.md)
- [jd](../method/DateTime/s/jd.md)
- [jisx0301](../method/DateTime/s/jisx0301.md)
- [json_create](../method/DateTime/s/json_create.md)
- [now](../method/DateTime/s/now.md)
- [ordinal](../method/DateTime/s/ordinal.md)
- [parse](../method/DateTime/s/parse.md)
- [rfc2822](../method/DateTime/s/rfc2822.md)
- [rfc822](../method/DateTime/s/rfc822.md)
- [rfc3339](../method/DateTime/s/rfc3339.md)
- [strptime](../method/DateTime/s/strptime.md)
- [today](../method/DateTime/s/today.md)
- [xmlschema](../method/DateTime/s/xmlschema.md)

## Instance Methods

- [deconstruct_keys](../method/DateTime/i/deconstruct_keys.md)
- [hour](../method/DateTime/i/hour.md)
- [iso8601](../method/DateTime/i/iso8601.md)
- [rfc3339](../method/DateTime/i/rfc3339.md)
- [xmlschema](../method/DateTime/i/xmlschema.md)
- [jisx0301](../method/DateTime/i/jisx0301.md)
- [min](../method/DateTime/i/min.md)
- [minute](../method/DateTime/i/minute.md)
- [new_offset](../method/DateTime/i/new_offset.md)
- [offset](../method/DateTime/i/offset.md)
- [sec](../method/DateTime/i/sec.md)
- [second](../method/DateTime/i/second.md)
- [sec_fraction](../method/DateTime/i/sec_fraction.md)
- [second_fraction](../method/DateTime/i/second_fraction.md)
- [to_date](../method/DateTime/i/to_date.md)
- [to_datetime](../method/DateTime/i/to_datetime.md)
- [to_json](../method/DateTime/i/to_json.md)
- [to_time](../method/DateTime/i/to_time.md)
- [zone](../method/DateTime/i/zone.md)
