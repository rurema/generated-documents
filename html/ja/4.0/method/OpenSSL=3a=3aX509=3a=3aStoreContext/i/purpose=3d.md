# OpenSSL::X509::StoreContext#purpose=

### def purpose=(purpose)

証明書の使用目的を設定します。

以下の定数値のうちいずれか1つを渡します。
  - [OpenSSL::X509::PURPOSE_ANY](../../../method/OpenSSL=3a=3aX509/c/PURPOSE_ANY.md)
  - [OpenSSL::X509::PURPOSE_CRL_SIGN](../../../method/OpenSSL=3a=3aX509/c/PURPOSE_CRL_SIGN.md)
  - [OpenSSL::X509::PURPOSE_NS_SSL_SERVER](../../../method/OpenSSL=3a=3aX509/c/PURPOSE_NS_SSL_SERVER.md)
  - [OpenSSL::X509::PURPOSE_SMIME_ENCRYPT](../../../method/OpenSSL=3a=3aX509/c/PURPOSE_SMIME_ENCRYPT.md)
  - [OpenSSL::X509::PURPOSE_SMIME_SIGN](../../../method/OpenSSL=3a=3aX509/c/PURPOSE_SMIME_SIGN.md)
  - [OpenSSL::X509::PURPOSE_SSL_CLIENT](../../../method/OpenSSL=3a=3aX509/c/PURPOSE_SSL_CLIENT.md)
  - [OpenSSL::X509::PURPOSE_SSL_SERVER](../../../method/OpenSSL=3a=3aX509/c/PURPOSE_SSL_SERVER.md)
  - [OpenSSL::X509::PURPOSE_OCSP_HELPER](../../../method/OpenSSL=3a=3aX509/c/PURPOSE_OCSP_HELPER.md)

証明書に記載されている使用目的が適合していない場合には検証が失敗します。
- **param** `purpose` -- 証明書の使用目的を表す整数値
- **SEE** [OpenSSL::X509::Store#purpose=](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/purpose=3d.md)
