# rb_iter_break_value

### void rb_iter_break_value(VALUE val)

現在もっとも内側のブロックから抜けます。
[rb_iter_break](../function/rb_iter_break.md) と同じですが、イテレータの評価結果となる値 `val` を指定できます。
この値はブロックの `yield` の値ではなく、ブロックを渡されたイテレータ(メソッド)の返り値になります。
この関数は呼び出し元に戻りません。

- **param** `val` -- イテレータの返り値にする値です。
- **raise** `LocalJumpError` -- ブロックの外から呼ばれたとき。
