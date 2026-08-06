# OpenSSL::SSL::SSLContext#client_ca=

### def client_ca=(ca)

クライアント証明書を要求する時にクライアントに送る CA 証明書のリストを設定します。

クライアントは提示した CA から利用可能(署名されている)な証明書を送り返します。

このメソッドはサーバ側でのみ意味を持ちます。

[OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) の配列を渡します。1つの場合は
[OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト自体を渡してもかまいません。

- **param** `ca` -- クライアント証明書を要求するときに提示する証明書の配列
- **SEE** [OpenSSL::SSL::SSLContext#client_ca](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_ca.md)
