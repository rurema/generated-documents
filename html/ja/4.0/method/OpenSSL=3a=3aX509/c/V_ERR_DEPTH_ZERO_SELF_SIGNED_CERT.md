# OpenSSL::X509::V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT

### const V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT -> Integer

検証している証明書がルート CA (自己署名証明書)であり、それが信頼されている証明書でないことを意味します。

[OpenSSL::X509::Store#error](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/error.md) や
[OpenSSL::X509::StoreContext#error](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error.md) のエラーコードとして使われます。

- **SEE** [OpenSSL::X509::Store#add_file](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/add_file.md),
     [OpenSSL::X509::Store#add_path](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/add_path.md),
     [OpenSSL::X509::Store#add_cert](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/add_cert.md),
     [OpenSSL::X509::Store#set_default_paths](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/set_default_paths.md)
