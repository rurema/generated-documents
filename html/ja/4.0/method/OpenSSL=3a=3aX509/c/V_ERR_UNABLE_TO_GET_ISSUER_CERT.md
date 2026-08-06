# OpenSSL::X509::V_ERR_UNABLE_TO_GET_ISSUER_CERT

### const V_ERR_UNABLE_TO_GET_ISSUER_CERT -> Integer

issuer(発行者)の証明書が信頼している証明書群の中から見付からないような証明書を、信頼している証明書群に含んでいることを意味します。

つまり、信頼している証明書群に issuer を親とする木構造を考えた場合、その root(根) となるノードが自己署名されていないことを意味します。

これは、通常信頼している証明書のリストが不完全であることを意味します。

[OpenSSL::X509::Store#error](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/error.md) や
[OpenSSL::X509::StoreContext#error](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error.md) のエラーコードとして使われます。

- **SEE** [OpenSSL::X509::Store#add_file](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/add_file.md),
     [OpenSSL::X509::Store#add_path](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/add_path.md),
     [OpenSSL::X509::Store#add_cert](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/add_cert.md),
     [OpenSSL::X509::Store#set_default_paths](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/set_default_paths.md)
