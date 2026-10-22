# rb_utf8_str_new

### VALUE rb_utf8_str_new(const char *ptr, long len)

UTF-8 の新しい [String](../class/String.md) を作成します。
[rb_str_new](../function/rb_str_new.md) と同じですが、エンコーディングが UTF-8 になります。

- **param** `ptr` -- 文字列の内容を持つ、`len` バイト以上のメモリ領域です。
- **param** `len` -- `ptr` の長さです。終端の NUL 文字を含まないバイト数で指定します。
- **return** -- `ptr` の内容をそのままコピーした、長さ `len` バイトで UTF-8 の新しい [String](../class/String.md) です。
- **raise** `NoMemoryError` -- `len+1` バイトの確保に失敗したとき。
- **raise** `ArgumentError` -- `len` が負のとき。
