# OpenSSL::SSL::SSLContext#min_version=

### def min_version=(version)

サポートする SSL/TLS プロトコルバージョンの下限を設定します。

`version` には `OpenSSL::SSL::TLS1_2_VERSION` のような整数の定数、`:TLS1_2` のようなシンボル、もしくは `nil` を指定します。`nil` は「バージョンの制限なし」を意味します。

```ruby title="例"
require 'openssl'
ctx = OpenSSL::SSL::SSLContext.new
ctx.min_version = OpenSSL::SSL::TLS1_1_VERSION
ctx.max_version = OpenSSL::SSL::TLS1_2_VERSION
```

- **param** `version` -- 設定するプロトコルバージョンの下限(整数の定数、シンボル、もしくは nil)
- **raise** `OpenSSL::SSL::SSLError` -- バージョンの設定に失敗した場合に発生します
- **raise** `ArgumentError` -- `version` が認識できない値の場合に発生します
- **SEE** [OpenSSL::SSL::SSLContext#max_version=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/max_version=3d.md)
