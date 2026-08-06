# OpenSSL::SSL::SSLSocket#cert

### def cert -> OpenSSL::X509::Certificate | nil

自分自身を証明する証明書を返します。

自分自身を証明する証明書を使わなかった場合は nil を返します。
[OpenSSL::SSL::SSLSocket#connect](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/connect.md) や [OpenSSL::SSL::SSLSocket#accept](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/accept.md) 
で SSL/TLS ハンドシェイクを行う前にこのメソッドを呼んだ場合も nil を返します。

- **SEE** [OpenSSL::SSL::SSLContext#cert](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert.md)
