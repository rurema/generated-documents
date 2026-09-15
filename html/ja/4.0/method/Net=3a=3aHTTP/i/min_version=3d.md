# Net::HTTP#min_version=

### def min_version -> Integer | Symbol | nil
{: since="2.5.0"}
### def min_version=(version)
{: since="2.5.0"}

利用する SSL/TLS のバージョンの下限を取得・設定します。

デフォルトは nil です。指定できる値は [OpenSSL::SSL::SSLContext#min_version=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/min_version=3d.md) と同じです。

- **param** `version` -- 利用する SSL/TLS のバージョンの下限
- **SEE** [Net::HTTP#max_version](../../../method/Net=3a=3aHTTP/i/max_version.md), [Net::HTTP#ssl_version=](../../../method/Net=3a=3aHTTP/i/ssl_version=3d.md)
