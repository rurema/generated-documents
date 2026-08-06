# OpenSSL::X509::V_ERR_UNABLE_TO_GET_ISSUER_CERT_LOCALLY

### const V_ERR_UNABLE_TO_GET_ISSUER_CERT_LOCALLY -> Integer

証明書チェイン末尾の証明書の issuer(発行者)の証明書が信頼している証明書群の中から見付からないことを意味します。

[OpenSSL::X509::Store#error](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/error.md) や
[OpenSSL::X509::StoreContext#error](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error.md) のエラーコードとして使われます。

- **SEE** [OpenSSL::X509::Store#add_file](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/add_file.md),
     [OpenSSL::X509::Store#add_path](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/add_path.md),
     [OpenSSL::X509::Store#add_cert](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/add_cert.md),
     [OpenSSL::X509::Store#set_default_paths](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/set_default_paths.md)
