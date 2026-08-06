# Encoding.default_internal

### def Encoding.default_internal -> Encoding | nil

既定の内部エンコーディングを返します。デフォルトでは nil です。

標準入出力、コマンドライン引数、open で開くファイルなどで、内部エンコーディングが指定されていない場合の既定値として利用されます。

[String#encode](../../../method/String/i/encode.md) と [String#encode!](../../../method/String/i/encode=21.md) は、引数に Encoding が与えられていない場合、 default_internal を使用します。

文字列リテラルを作成した場合、エンコーディングには default_internal ではなく `__ENCODING__` 特殊変数で参照できるスクリプトエンコーディングが使用されます。

default_internal は、ソースファイルの [IO#internal_encoding](../../../method/IO/i/internal_encoding.md) または -E オプションで初期化されます。

- **SEE** [spec/rubycmd](../../../doc/spec=2frubycmd.md) [Encoding.default_external](../../../method/Encoding/s/default_external.md)
