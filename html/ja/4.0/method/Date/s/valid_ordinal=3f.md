# Date.valid_ordinal?

### def Date.valid_ordinal? (year, yday, start = Date::GREGORIAN) -> bool

正しい年間通算日 (年日付) であれば真、そうでないなら偽を返します。

[Date.jd](../../../method/Date/s/jd.md)、および [Date.ordinal](../../../method/Date/s/ordinal.md) も参照してください。

- **param** `year` -- 年
- **param** `yday` -- 年の日
- **param** `start` -- グレゴリオ暦をつかい始めた日をあらわすユリウス日
