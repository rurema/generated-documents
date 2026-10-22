# NUM2ULL

### unsigned long long NUM2ULL(VALUE x)

[Numeric](../class/Numeric.md) のオブジェクト `x` を、C の `unsigned long long` に変換します。

- **param** `x` -- 変換する数値のオブジェクトです。
- **return** -- `unsigned long long` に変換した値です。
- **raise** `TypeError` -- `x` が数値でないとき。
- **raise** `RangeError` -- `x` が `unsigned long long` で表せる範囲外のとき。
