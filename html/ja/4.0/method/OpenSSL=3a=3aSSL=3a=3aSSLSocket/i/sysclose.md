# OpenSSL::SSL::SSLSocket#sysclose

### def sysclose -> nil

接続を閉じます。相手に'close notify'を送ります。

このメソッドは openssl ライブラリ内で管理しているバッファをフラッシュせずに接続を閉じます。そのため、通常はこれではなく [OpenSSL::Buffering#close](../../../method/OpenSSL=3a=3aBuffering/i/close.md) を呼ぶべきです。

[OpenSSL::SSL::SSLSocket#sync_close](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/sync_close.md) が真である場合はこのメソッドを呼びだした時点で自身が保持しているソケットを同時に閉じます。
