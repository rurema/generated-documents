# OpenSSL::PKey::RSA#public_encrypt

### def public_encrypt(str, mode = OpenSSL::PKey::RSA::PKCS1_PADDING) -> String

文字列 str を公開鍵で暗号化します。

暗号化されたデータを文字列で返します。

mode でパディングモードを指定します。以下の4つのうちいずれかが利用可能です。
- [OpenSSL::PKey::RSA::PKCS1_PADDING](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/c/PKCS1_PADDING.md)
- [OpenSSL::PKey::RSA::SSLV23_PADDING](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/c/SSLV23_PADDING.md)
- [OpenSSL::PKey::RSA::PKCS1_OAEP_PADDING](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/c/PKCS1_OAEP_PADDING.md)
- [OpenSSL::PKey::RSA::NO_PADDING](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/c/NO_PADDING.md)

- **param** `str` -- 暗号化する文字列
- **param** `mode` -- パディングモード
- **raise** `OpenSSL::PKey::RSAError` -- 暗号化に失敗した場合に発生します。
