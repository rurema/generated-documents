# rb_ary_new4

### VALUE rb_ary_new4(long n, const VALUE *elts)

[rb_ary_new_from_values](../function/rb_ary_new_from_values.md) の古い名前です。
新しく書くコードでは [rb_ary_new_from_values](../function/rb_ary_new_from_values.md) を使ってください。

- **param** `n` -- `elts` の要素数です。
- **param** `elts` -- 配列に入れるオブジェクトの C の配列です。
- **return** -- 要素数 `n` の新しい配列です。
