# OpenSSL::SSL::SSLContext#cert_store=

### def cert_store=(store) 

接続相手の証明書の検証のために使う、信頼している CA 証明書を含む証明書ストアを設定します。

通常は [OpenSSL::SSL::SSLContext#ca_path=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_path=3d.md) や
[OpenSSL::SSL::SSLContext#ca_file=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_file=3d.md) で証明書を設定しますが、
CRL を使いたいなど、より詳細な設定をしたい場合にはこれを使います。

デフォルトは nil (証明書ストアを指定しない)です。

- **param** `store` -- 設定する証明書ストア([OpenSSL::X509::Store](../../../class/OpenSSL=3a=3aX509=3a=3aStore.md) のインスタンス)
- **SEE** [OpenSSL::SSL::SSLContext#cert_store](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert_store.md)
