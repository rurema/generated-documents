# ARGF.class#set_encoding

### def set_encoding(ext_enc)                        -> self
{: since="1.9.1"}
### def set_encoding(enc_str, options = {})          -> self
{: since="1.9.1"}
### def set_encoding(ext_enc, int_enc, options = {}) -> self
{: since="1.9.1"}

ARGF の外部／内部エンコーディングを設定します。
次以降に処理するファイルにも同じ設定が適用されます。

外部エンコーディングは ARGF を介して読み込むファイルの、内部エンコーディングは読み込んだ文字列のエンコーディングです。

詳しくは [IO#set_encoding](../../../method/IO/i/set_encoding.md) を参照してください。

- **param** `enc_str` -- 外部／内部エンコーディングを"A:B" のようにコロンで
               区切って指定します。
- **param** `ext_enc` -- 外部エンコーディングを表す文字列か
               [Encoding](../../../class/Encoding.md) オブジェクトを指定します。
- **param** `int_enc` -- 内部エンコーディングを表す文字列か
               [Encoding](../../../class/Encoding.md) オブジェクトを指定します。
- **param** `options` -- エンコーディング変換のオプション。
               [String#encode](../../../method/String/i/encode.md) と同じものが指定できます。

- **SEE** [String#encode](../../../method/String/i/encode.md)
