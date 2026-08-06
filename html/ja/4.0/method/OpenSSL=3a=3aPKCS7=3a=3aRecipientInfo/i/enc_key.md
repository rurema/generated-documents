# OpenSSL::PKCS7::RecipientInfo#enc_key

### def enc_key -> String

送信先の公開鍵で暗号化された共通鍵を返します。

詳しくは [RFC:2315] の 10.2、10.3 を参照してください。

通常は [OpenSSL::PKCS7#decrypt](../../../method/OpenSSL=3a=3aPKCS7/i/decrypt.md) で復号化するのであまり使わないでしょう。
