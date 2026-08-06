# OpenSSL::SSL::SSLContext::DEFAULT_CERT_STORE

### const DEFAULT_CERT_STORE -> OpenSSL::X509::Store

[OpenSSL::SSL::SSLContext#set_params](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/set_params.md) で信頼する CA 証明書
(ca_file, ca_path, cert_store) を一切指定しなかった場合にデフォルトで使われる証明書ストアです。

[OpenSSL::X509::Store#set_default_paths](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/set_default_paths.md) でシステムが提供する証明書を利用するように設定されています。
