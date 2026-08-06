# OpenSSL::SSL::SSLContext#client_cert_cb

### def client_cert_cb -> Proc | nil

[OpenSSL::SSL::SSLContext#cert=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert=3d.md) でクライアント証明書をセットしていなかった場合にサーバからクライアント証明書の要求が来たときに呼びだされるコールバックオブジェクトを返します。

デフォルトは nil (コールバックなし)です。
- **SEE** [OpenSSL::SSL::SSLContext#client_cert_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_cert_cb=3d.md)
