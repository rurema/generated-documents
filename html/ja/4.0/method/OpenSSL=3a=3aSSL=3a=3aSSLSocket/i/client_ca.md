# OpenSSL::SSL::SSLSocket#client_ca

### def client_ca -> [OpenSSL::X509::Name] | nil

クライアント証明書を要求する際に提示される CA のリストを、[OpenSSL::X509::Name](../../../class/OpenSSL=3a=3aX509=3a=3aName.md) の配列で返します。

[OpenSSL::SSL::SSLContext#client_ca=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_ca=3d.md) とは異なり、[OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) の配列ではなく、各 CA のサブジェクトの識別名([OpenSSL::X509::Name](../../../class/OpenSSL=3a=3aX509=3a=3aName.md))の配列を返すことに注意してください。

サーバモードでは [OpenSSL::SSL::SSLContext#client_ca=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_ca=3d.md) で設定したリストを返します。クライアントモードでは、サーバから送られてきたクライアント CA のリストを返します。

- **SEE** [OpenSSL::SSL::SSLContext#client_ca=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_ca=3d.md)
