# OpenSSL::SSL::SSLContext#max_version=

### def max_version=(version)

サポートする SSL/TLS プロトコルバージョンの上限を設定します。指定できる値は [OpenSSL::SSL::SSLContext#min_version=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/min_version=3d.md) と同様です。

- **param** `version` -- 設定するプロトコルバージョンの上限(整数の定数、シンボル、もしくは nil)
- **raise** `OpenSSL::SSL::SSLError` -- バージョンの設定に失敗した場合に発生します
- **raise** `ArgumentError` -- `version` が認識できない値の場合に発生します
- **SEE** [OpenSSL::SSL::SSLContext#min_version=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/min_version=3d.md)
