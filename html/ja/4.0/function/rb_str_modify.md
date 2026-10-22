# rb_str_modify

### void rb_str_modify(VALUE str)

文字列 `str` を変更する準備をします。
`RSTRING_PTR` や [rb_str_set_len](../function/rb_str_set_len.md) を使って `str` の内容を変更する前には、必ずこの関数を呼んでください。

`str` が共有された領域を使っているときは、専用の領域を確保します。
変更できない文字列のときは、例外が発生します。

- **param** `str` -- 変更しようとする [String](../class/String.md) です。
- **raise** `RuntimeError` -- `str` が `locktmp` されているとき。
- **raise** `FrozenError` -- `str` が凍結されているとき。
