# OpenSSL::Netscape::SPKI#sign

### def sign(key, digest) -> self

SPKI オブジェクトに署名をします。

- **param** `key` -- 署名に使う秘密鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) オブジェクト)
- **param** `digest` -- 署名に使うダイジェスト関数(文字列もしくは [OpenSSL::Digest](../../../class/OpenSSL=3a=3aDigest.md) オブジェクト)
- **raise** `OpenSSL::Netscape::SPKIError` -- 署名に失敗した場合に発生します
- **SEE** [OpenSSL::Netscape::SPKI#verify](../../../method/OpenSSL=3a=3aNetscape=3a=3aSPKI/i/verify.md)
