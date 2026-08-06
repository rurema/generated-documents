# OpenSSL::PKey::RSA#private_decrypt

### def private_decrypt(str, mode = OpenSSL::PKey::RSA::PKCS1_PADDING) -> String

文字列 str を秘密鍵で復号化します。

復号化されたデータを文字列で返します。

mode でパディングモードを指定します。暗号化に利用したパディングモードと同じものを指定する必要があります。
以下の4つのうちいずれかが利用可能です。
- [OpenSSL::PKey::RSA::PKCS1_PADDING](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/c/PKCS1_PADDING.md)
- [OpenSSL::PKey::RSA::SSLV23_PADDING](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/c/SSLV23_PADDING.md)
- [OpenSSL::PKey::RSA::PKCS1_OAEP_PADDING](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/c/PKCS1_OAEP_PADDING.md)
- [OpenSSL::PKey::RSA::NO_PADDING](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/c/NO_PADDING.md)

- **param** `str` -- 暗号化する文字列
- **param** `mode` -- パディングモード
- **raise** `OpenSSL::PKey::RSAError` -- 復号化に失敗した場合に発生します。
       公開鍵で復号しようとした場合、鍵が間違っていた場合、
       暗号化に使ったパディングモードと異なるモードを使った
       場合などに発生します。
