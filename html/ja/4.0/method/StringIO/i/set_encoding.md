# StringIO#set_encoding

### def set_encoding(ext_enc)               -> self
### def set_encoding(ext_enc, int_enc)      -> self
### def set_encoding(ext_enc, int_enc, opt) -> self

自身のエンコーディングを指定されたエンコーディングに設定します。

- **param** `ext_enc` -- エンコーディングを指定します。
               nil を指定した場合は [Encoding.default_external](../../../method/Encoding/s/default_external.md) が
               使われます。

- **param** `int_enc` -- 無視されます。[IO](../../../class/IO.md) クラスの API との互換性のために用
               意されています。

- **param** `opt` -- 無視されます。[IO](../../../class/IO.md) クラスの API との互換性のために用意さ
           れています。
