# rb_str_new_cstr

### VALUE rb_str_new_cstr(const char *ptr)

C の文字列 `ptr` から、新しい [String](../class/String.md) を作成します。
`rb_str_new(ptr, strlen(ptr))` と同じです。
エンコーディングは ASCII-8BIT(binary)になります。

- **param** `ptr` -- C の文字列です。`NULL` は指定できません。
- **return** -- `ptr` の内容をそのままコピーした、ASCII-8BIT の新しい [String](../class/String.md) です。
- **raise** `NoMemoryError` -- メモリの確保に失敗したとき。
- **raise** `ArgumentError` -- `ptr` が `NULL` のとき。
