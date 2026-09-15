# Net::HTTP#max_version

### def max_version -> Integer | Symbol | nil
{: since="2.5.0"}
### def max_version=(version)
{: since="2.5.0"}

利用する SSL/TLS のバージョンの上限を取得・設定します。

デフォルトは nil です。指定できる値は [OpenSSL::SSL::SSLContext#max_version=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/max_version=3d.md) と同じです。

- **param** `version` -- 利用する SSL/TLS のバージョンの上限
- **SEE** [Net::HTTP#min_version](../../../method/Net=3a=3aHTTP/i/min_version.md), [Net::HTTP#ssl_version=](../../../method/Net=3a=3aHTTP/i/ssl_version=3d.md)
