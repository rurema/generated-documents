# NUM2LL

### long long NUM2LL(VALUE x)

[Numeric](../class/Numeric.md) のオブジェクト `x` を、C の `long long` に変換します。
逆の変換には [LL2NUM](../function/LL2NUM.md) を使います。

- **param** `x` -- 変換する数値のオブジェクトです。
- **return** -- `long long` に変換した値です。
- **raise** `TypeError` -- `x` が数値でないとき。
- **raise** `RangeError` -- `x` が `long long` で表せる範囲外のとき。
