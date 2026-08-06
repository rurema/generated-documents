# OpenSSL::PKCS7#add_certificate

### def add_certificate(cert) -> self

署名に添付する証明書を追加します。

通常は [OpenSSL::PKCS7.sign](../../../method/OpenSSL=3a=3aPKCS7/s/sign.md) の引数で添付する証明書を指定したほうがよいでしょう。

- **param** `cert` -- 追加する証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト)
- **raise** `OpenSSL::PKCS7::PKCS7Error` -- 追加に失敗した場合に発生します。
