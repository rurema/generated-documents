# OpenSSL::PKCS7#add_crl

### def add_crl(crl) -> self

署名に添付する CRL を追加します。

- **param** `crl` -- 追加する CLR ([OpenSSL::X509::CRL](../../../class/OpenSSL=3a=3aX509=3a=3aCRL.md) オブジェクト)
- **raise** `OpenSSL::PKCS7::PKCS7Error` -- 追加に失敗した場合に発生します。
