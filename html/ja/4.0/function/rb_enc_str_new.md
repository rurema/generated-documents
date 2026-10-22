# rb_enc_str_new

### VALUE rb_enc_str_new(const char *ptr, long len, rb_encoding *enc)

エンコーディングを指定して、新しい [String](../class/String.md) を作成します。
[rb_str_new](../function/rb_str_new.md) と同じですが、エンコーディング `enc` を持つ文字列になります。

`enc` には `NULL` も指定できます。
その場合は、US-ASCII の文字列を作成する [rb_usascii_str_new](../function/rb_usascii_str_new.md) と同じになります。

- **param** `ptr` -- 文字列の内容を持つ、`len` バイト以上のメモリ領域です。
- **param** `len` -- `ptr` の長さです。終端の NUL 文字を含まないバイト数で指定します。
- **param** `enc` -- `ptr` のエンコーディングです。
- **return** -- `ptr` の内容をそのままコピーした、長さ `len` バイトで `enc` のエンコーディングの新しい [String](../class/String.md) です。
- **raise** `NoMemoryError` -- `len+1` バイトの確保に失敗したとき。
- **raise** `ArgumentError` -- `len` が負のとき。
