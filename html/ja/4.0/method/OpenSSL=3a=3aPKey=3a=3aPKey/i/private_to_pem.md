# OpenSSL::PKey::PKey#private_to_pem

### def private_to_pem -> String
### def private_to_pem(cipher, password) -> String

秘密鍵を PEM 形式の PKCS #8 形式にシリアライズします。

暗号化されていない場合は "-----BEGIN PRIVATE KEY-----" で、暗号化されている場合は "-----BEGIN ENCRYPTED PRIVATE KEY-----" で始まる PEM データになります。

詳細は [OpenSSL::PKey::PKey#private_to_der](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/private_to_der.md) を参照してください。

- **param** `cipher` -- [OpenSSL::PKey::PKey#private_to_der](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/private_to_der.md) を参照してください
- **param** `password` -- [OpenSSL::PKey::PKey#private_to_der](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/private_to_der.md) を参照してください
- **SEE** [OpenSSL::PKey::PKey#private_to_der](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/private_to_der.md)
