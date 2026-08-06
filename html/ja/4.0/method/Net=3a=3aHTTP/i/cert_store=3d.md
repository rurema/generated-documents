# Net::HTTP#cert_store=

### def cert_store=(store)

接続相手の証明書の検証のために使う、信頼している CA 証明書を含む証明書ストアを設定します。

通常は [Net::HTTP#ca_file=](../../../method/Net=3a=3aHTTP/i/ca_file=3d.md) や [Net::HTTP#ca_path=](../../../method/Net=3a=3aHTTP/i/ca_path=3d.md) で設定しますが、より詳細な設定をしたい場合にはこちらを用います。

デフォルトは nil (証明書ストアを指定しない)です。

- **SEE** [Net::HTTP#cert_store=](../../../method/Net=3a=3aHTTP/i/cert_store=3d.md), [OpenSSL::SSL::SSLContext#cert_store](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert_store.md)
