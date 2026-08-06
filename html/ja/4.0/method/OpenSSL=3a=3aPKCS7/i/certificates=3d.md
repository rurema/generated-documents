# OpenSSL::PKCS7#certificates=

### def certificates=(certificates)

署名に付ける証明書を指定します。

PKCS7 オブジェクトに元々つけられていた証明書はクリアされます。
通常は [OpenSSL::PKCS7.sign](../../../method/OpenSSL=3a=3aPKCS7/s/sign.md) の引数で添付する証明書を指定したほうがよいでしょう。

- **param** `certificates` -- 証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト)の配列
- **raise** `OpenSSL::PKCS7::PKCS7Error` -- 変更に失敗した場合に発生します。
