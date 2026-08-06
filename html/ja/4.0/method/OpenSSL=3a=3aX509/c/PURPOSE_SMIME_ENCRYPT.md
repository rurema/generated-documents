# OpenSSL::X509::PURPOSE_SMIME_ENCRYPT

### const PURPOSE_SMIME_ENCRYPT -> Integer

証明書が
S/MIME の暗号化をするのに使えるかチェックすることを意味します。

[OpenSSL::X509::Store#purpose=](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/purpose=3d.md) や
[OpenSSL::X509::StoreContext#purpose=](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/purpose=3d.md) で設定し、
[OpenSSL::X509::Store#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify.md) や
[OpenSSL::X509::StoreContext#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md) でこのことを確認します。
