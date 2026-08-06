# Encoding.default_external=

### def Encoding.default_external=(encoding)

既定の外部エンコーディングを設定します。

default_external を変更する前に作成した文字列と、default_external を変更した後に作成した文字列とではエンコーディングが異なる可能性があるため、Ruby スクリプト内で Encoding.default_external を設定してはいけません。代わりに、ruby -E を使用して、正しい default_external で Ruby を起動してください。

デフォルトの外部エンコーディングがどのように使われるかについては [Encoding.default_external](../../../method/Encoding/s/default_external.md) を参照してください。

- **SEE** [spec/rubycmd](../../../doc/spec=2frubycmd.md) [Encoding.default_external](../../../method/Encoding/s/default_external.md)
