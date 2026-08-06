# OpenSSL::X509::V_ERR_UNABLE_TO_GET_CRL

### const V_ERR_UNABLE_TO_GET_CRL -> Integer

CRL が見付からないことを意味します。

[OpenSSL::X509::Store#flags=](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/flags=3d.md) で CRL をチェックすることを指定したにもかかわらず、適切な CRL を
[OpenSSL::X509::Store#add_crl](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/add_crl.md) で追加しなかった場合にこのエラーが生じます。

[OpenSSL::X509::Store#error](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/error.md) や
[OpenSSL::X509::StoreContext#error](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error.md) のエラーコードとして使われます。
