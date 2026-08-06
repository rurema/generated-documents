# OpenSSL::X509::V_ERR_INVALID_CA

### const V_ERR_INVALID_CA -> Integer

CA 証明書が不正であることを意味します。

証明書が実は CA 用ではない場合は証明書の拡張がおかしい場合にこのエラーが発生します。

[OpenSSL::X509::Store#error](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/error.md) や
[OpenSSL::X509::StoreContext#error](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error.md) のエラーコードとして使われます。
