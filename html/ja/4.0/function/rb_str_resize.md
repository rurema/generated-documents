# rb_str_resize

### VALUE rb_str_resize(VALUE str, long len)

文字列 `str` の長さを `len` バイトにします。
[rb_str_set_len](../function/rb_str_set_len.md) と異なり、文字列を伸ばすこともできます。
`len` が元の長さより小さければ、`len` バイトより後ろの内容は捨てられます。
大きければ、元の長さより後ろの内容は保証されず、ごみになります。

この関数を呼ぶと `RSTRING_PTR(str)` が変わることがあります。
`str` は [String](../class/String.md) でなければいけません。

- **param** `str` -- 長さを変える [String](../class/String.md) です。
- **param** `len` -- 新しい長さです。
- **return** -- 引数の `str` です。
- **raise** `ArgumentError` -- `len` が負のとき。
- **raise** `RuntimeError` -- `str` が `locktmp` されているとき。
- **raise** `FrozenError` -- `str` が凍結されているとき。
