# OpenSSL::X509::StoreContext#verify

### def verify -> bool

証明書を検証します。

[OpenSSL::X509::StoreContext.new](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/s/new.md) で設定した証明書を検証します。
検証に成功した場合は true を、失敗した場合は false を返します。

検証の詳細な情報は
  - [OpenSSL::X509::StoreContext#error](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error.md)
  - [OpenSSL::X509::StoreContext#error_string](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error_string.md)
  - [OpenSSL::X509::StoreContext#chain](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/chain.md)
  - [OpenSSL::X509::StoreContext#current_crl](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/current_crl.md)
