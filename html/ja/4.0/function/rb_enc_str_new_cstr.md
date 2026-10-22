# rb_enc_str_new_cstr

### VALUE rb_enc_str_new_cstr(const char *ptr, rb_encoding *enc)

エンコーディングを指定して、C の文字列から新しい [String](../class/String.md) を作成します。
[rb_enc_str_new](../function/rb_enc_str_new.md) と同じですが、`ptr` が C の文字列であると仮定して長さを求めます。
[rb_str_new_cstr](../function/rb_str_new_cstr.md) と同じですが、エンコーディング `enc` を持つ文字列になります。

`enc` には `NULL` も指定できます。
その場合は、[rb_usascii_str_new_cstr](../function/rb_usascii_str_new_cstr.md) と同じになります。
`ptr` は C の文字列なので、`enc` に UTF-32 のようなものを指定しても意味がありません。

- **param** `ptr` -- C の文字列です。`NULL` は指定できません。
- **param** `enc` -- `ptr` のエンコーディングです。
- **return** -- `ptr` の内容をそのままコピーした、`enc` のエンコーディングの新しい [String](../class/String.md) です。
- **raise** `NoMemoryError` -- メモリの確保に失敗したとき。
