# Net::HTTP#verify_hostname=

### def verify_hostname -> bool | nil
### def verify_hostname=(bool)

証明書がホスト名に対して有効かどうかを検証するかどうかを取得・設定します。

詳しくは [OpenSSL::SSL::SSLContext#verify_hostname](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_hostname.md) を見てください。

デフォルトは nil です。

- **param** `bool` -- ホスト名の検証を行うかどうかを真偽値で指定します。
- **SEE** [Net::HTTP#verify_mode](../../../method/Net=3a=3aHTTP/i/verify_mode.md), [Net::HTTP#verify_mode=](../../../method/Net=3a=3aHTTP/i/verify_mode=3d.md)
