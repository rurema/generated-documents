# OpenSSL::SSL::SSLContext#verify_hostname

### def verify_hostname -> bool
### def verify_hostname=(bool)

サーバ証明書がホスト名に対して有効かどうかを検証するかどうかを取得・設定します。

これを機能させるには、[OpenSSL::SSL::SSLContext#verify_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_mode=3d.md) に `OpenSSL::SSL::VERIFY_PEER` を設定し、かつ [OpenSSL::SSL::SSLSocket#hostname=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/hostname=3d.md) でサーバのホスト名を設定しておく必要があります。

- **param** `bool` -- 検証を行うかどうかを true か false で指定します
- **SEE** [OpenSSL::SSL::SSLContext#verify_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_mode=3d.md), [OpenSSL::SSL::SSLSocket#hostname=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/hostname=3d.md)
