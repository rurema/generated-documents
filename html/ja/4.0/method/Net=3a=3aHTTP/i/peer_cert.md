# Net::HTTP#peer_cert

### def peer_cert -> OpenSSL::X509::Certificate | nil

サーバの証明書を返します。

SSL/TLS が有効でなかったり、接続前である場合には nil
を返します。

- **SEE** [OpenSSL::SSL::SSLSocket#peer_cert](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/peer_cert.md)
