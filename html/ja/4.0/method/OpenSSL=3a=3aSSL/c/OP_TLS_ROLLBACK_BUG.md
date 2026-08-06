# OpenSSL::SSL::OP_TLS_ROLLBACK_BUG

### const OP_TLS_ROLLBACK_BUG -> Integer

バージョンロールバック攻撃の検出を無効にします。

[OpenSSL::SSL::SSLContext#options=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/options=3d.md) で利用します。

通常は使わないでください。

鍵交換時に、クライアントとサーバで利用可能なプロトコルのバージョンをやりとりします。クライアントによってはサーバが送ったバージョンを無視します。そのようなクライアントと通信する必要がある場合このオプションを有効にします。
