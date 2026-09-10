# OpenSSL::SSL::SSLContext#ciphersuites=

### def ciphersuites=(ciphers)

TLS 1.3 で使う共通鍵暗号の一覧を設定します。

[OpenSSL::SSL::SSLContext#ciphers=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ciphers=3d.md) は TLS 1.2 以下向けの設定であり、TLS 1.3 の通信には影響しません。TLS 1.3 の暗号を設定するにはこのメソッドを使います。

指定の方法は [OpenSSL::SSL::SSLContext#ciphers=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ciphers=3d.md) と同様に、コロン区切りの文字列、もしくは名前の配列で指定します。

- **param** `ciphers` -- 利用可能にする TLS 1.3 の共通鍵暗号の種類
- **raise** `OpenSSL::SSL::SSLError` -- 設定に失敗した場合に発生します
- **SEE** [OpenSSL::SSL::SSLContext#ciphers=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ciphers=3d.md)
