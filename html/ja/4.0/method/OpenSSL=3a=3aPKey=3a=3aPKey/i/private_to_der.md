# OpenSSL::PKey::PKey#private_to_der

### def private_to_der -> String
### def private_to_der(cipher, password) -> String

秘密鍵を DER 形式の PKCS #8 形式にシリアライズします。

引数なしで呼び出した場合は、暗号化されていない PKCS #8 PrivateKeyInfo 形式を使います。cipher と password を指定して呼び出した場合は、PBES2 暗号化方式を使った PKCS #8 EncryptedPrivateKeyInfo 形式を使います。

- **param** `cipher` -- 秘密鍵を暗号化する暗号アルゴリズムの名前、または [OpenSSL::Cipher](../../../class/OpenSSL=3a=3aCipher.md) オブジェクト
- **param** `password` -- 暗号化に使うパスワード
- **SEE** [OpenSSL::PKey::PKey#private_to_pem](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/private_to_pem.md)
