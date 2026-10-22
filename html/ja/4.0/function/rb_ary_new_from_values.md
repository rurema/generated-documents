# rb_ary_new_from_values

### VALUE rb_ary_new_from_values(long n, const VALUE *elts)

C の配列で渡されたオブジェクトから、要素数 `n` の配列を作成します。
[rb_ary_new_from_args](../function/rb_ary_new_from_args.md) とは、オブジェクトの渡し方だけが異なります。

- **param** `n` -- `elts` の要素数です。
- **param** `elts` -- 配列に入れる Ruby のオブジェクトの C の配列です。
- **return** -- 要素数 `n` の新しい配列です。
