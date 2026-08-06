# OpenSSL::SSL::SSLContext#ssl_timeout=

### def timeout=(seconds)
### def ssl_timeout=(seconds)

このコンテキストから生成するセッションのタイムアウト秒数を設定します。

nil を指定すると OpenSSL のデフォルトのタイムアウト秒数(300秒)を用います。

- **param** `seconds` -- タイムアウト秒数(整数)
- **SEE** [OpenSSL::SSL::Session#timeout](../../../method/OpenSSL=3a=3aSSL=3a=3aSession/i/timeout.md)
