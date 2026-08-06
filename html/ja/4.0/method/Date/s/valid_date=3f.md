# Date.valid_date?

### def Date.valid_civil? (year, mon, mday, start = Date::GREGORIAN) -> bool
### def Date.valid_date? (year, mon, mday, start = Date::GREGORIAN) -> bool

正しい暦日付であれば真、そうでないなら偽を返します。

[Date.jd](../../../method/Date/s/jd.md)、および [Date.civil](../../../method/Date/s/civil.md) も参照してください。

- **param** `year` -- 年
- **param** `mon` -- 月
- **param** `mday` -- 日
- **param** `start` -- グレゴリオ暦をつかい始めた日をあらわすユリウス日
