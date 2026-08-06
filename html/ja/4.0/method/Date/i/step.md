# Date#step

### def step(limit, step = 1){|date| ...} -> self
### def step(limit, step = 1) -> Enumerator

ブロックの評価を繰り返します。ブロックは日付オブジェクトをとります。
limit は日付オブジェクトでなければなりません、また step は非零でなければなりません。

- **param** `limit` -- 日付オブジェクト
- **param** `step` -- 歩幅

- **SEE** [Date#downto](../../../method/Date/i/downto.md), [Date#upto](../../../method/Date/i/upto.md)
