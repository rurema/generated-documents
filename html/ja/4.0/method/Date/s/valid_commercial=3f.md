# Date.valid_commercial?

### def Date.valid_commercial? (cwyear, cweek, cwday, start = Date::GREGORIAN) -> bool

正しい暦週日付であれば真、そうでないなら偽を返します。

[Date.jd](../../../method/Date/s/jd.md)、および [Date.commercial](../../../method/Date/s/commercial.md) も参照してください。

- **param** `cwyear` -- 年
- **param** `cweek` -- 週
- **param** `cwday` -- 週の日 (曜日)
- **param** `start` -- グレゴリオ暦をつかい始めた日をあらわすユリウス日
