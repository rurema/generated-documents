# OpenSSL::SSL::SSLSocket#peer_cert

### def peer_cert -> OpenSSL::X509::Certificate | nil

接続相手の証明書オブジェクトを返します。

[OpenSSL::SSL::SSLSocket#connect](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/connect.md) や [OpenSSL::SSL::SSLSocket#accept](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/accept.md) 
で SSL/TLS ハンドシェイクを行う前にこのメソッドを呼ぶと nil を返します。

- **SEE** [OpenSSL::SSL::SSLSocket#peer_cert_chain](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/peer_cert_chain.md)
