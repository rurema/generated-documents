# OpenSSL::SSL::SSLSocket#pending

### def pending -> Integer | nil

OpenSSL内部のバッファが保持している、直ちに読み取り可能なデータのバイト数を返します。

ハンドシェイク開始前には nil を返します。
