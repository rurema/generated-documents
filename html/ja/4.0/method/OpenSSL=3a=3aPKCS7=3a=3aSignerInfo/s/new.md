# OpenSSL::PKCS7::SignerInfo.new

### def OpenSSL::PKCS7::SignerInfo.new(cert, key, digest) -> OpenSSL::PKCS7::SignerInfo

署名者オブジェクトを証明書、秘密鍵、ダイジェスト方式から生成します。

証明書、秘密鍵、ダイジェスト方式は署名をするために利用します。

- **param** `cert` -- 証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト)
- **param** `key` -- 秘密鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) オブジェクト)
- **param** `digest` -- メッセージダイジェスト方式(文字列もしくは [OpenSSL::Digest](../../../class/OpenSSL=3a=3aDigest.md) オブジェクト)
