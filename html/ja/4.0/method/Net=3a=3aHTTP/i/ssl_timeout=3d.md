# Net::HTTP#ssl_timeout=

### def ssl_timeout=(sec)

SSL/TLS のタイムアウト秒数を設定します。

HTTP セッション開始時([Net::HTTP#start](../../../method/Net=3a=3aHTTP/i/start.md) など)に
[OpenSSL::SSL::SSLContext#ssl_timeout=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ssl_timeout=3d.md) でタイムアウトを設定します。

デフォルト値は [OpenSSL::SSL::SSLContext#ssl_timeout=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ssl_timeout=3d.md) と同じで、OpenSSL のデフォルト値(300秒)を用います。

- **param** `sec` -- タイムアウト秒数
- **SEE** [Net::HTTP#ssl_timeout](../../../method/Net=3a=3aHTTP/i/ssl_timeout.md),
     [OpenSSL::SSL::SSLContext#ssl_timeout=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ssl_timeout=3d.md)
