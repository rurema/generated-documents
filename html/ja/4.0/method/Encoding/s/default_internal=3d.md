# Encoding.default_internal=

### def Encoding.default_internal=(encoding)

既定の内部エンコーディングを設定します。

default_internal を変更する前に作成した文字列と、default_internal を変更した後に作成した文字列とではエンコーディングが異なる可能性があるため、Ruby スクリプト内で Encoding.default_internal を設定してはいけません。代わりに、ruby -E を使用して、正しい default_internal で Ruby を起動してください。

デフォルトの内部エンコーディングがどのように使われるかについては [Encoding.default_internal](../../../method/Encoding/s/default_internal.md) を参照してください。

- **SEE** [spec/rubycmd](../../../doc/spec=2frubycmd.md) [Encoding.default_internal](../../../method/Encoding/s/default_internal.md)
