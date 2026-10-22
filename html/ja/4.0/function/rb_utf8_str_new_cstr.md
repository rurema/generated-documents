# rb_utf8_str_new_cstr

### VALUE rb_utf8_str_new_cstr(const char *ptr)

C の文字列 `ptr` から、UTF-8 の新しい [String](../class/String.md) を作成します。
[rb_str_new_cstr](../function/rb_str_new_cstr.md) と同じですが、エンコーディングが UTF-8 になります。

- **param** `ptr` -- C の文字列です。`NULL` は指定できません。
- **return** -- `ptr` の内容をそのままコピーした、UTF-8 の新しい [String](../class/String.md) です。
- **raise** `NoMemoryError` -- メモリの確保に失敗したとき。
- **raise** `ArgumentError` -- `ptr` が `NULL` のとき。
