# RB_TYPE_P

### bool RB_TYPE_P(VALUE obj, enum ruby_value_type t)

`obj` の内部の型が `t`(`T_NIL`、`T_FIXNUM` など)かどうかを調べます。
型が合わないときに例外を発生させたいときは [Check_Type](../function/Check_Type.md) を使います。

- **param** `obj` -- 調べるオブジェクトです。
- **param** `t` -- 型を表す定数です。
- **return** -- `obj` が型 `t` なら `true`、そうでなければ `false` です。
