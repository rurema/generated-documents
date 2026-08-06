# OpenSSL::X509::V_ERR_CERT_NOT_YET_VALID

### const V_ERR_CERT_NOT_YET_VALID -> Integer

証明書の開始時刻以前であることを意味します。

開始時刻は証明書チェイン全体に対し確認されます。

[OpenSSL::X509::Store#error](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/error.md) や
[OpenSSL::X509::StoreContext#error](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error.md) のエラーコードとして使われます。

- **SEE** [OpenSSL::X509::Certificate#not_before=](../../../method/OpenSSL=3a=3aX509=3a=3aCertificate/i/not_before=3d.md),
     [OpenSSL::X509::Store#time=](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/time=3d.md)
