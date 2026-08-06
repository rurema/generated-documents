# OpenSSL::X509::CRL#sign

### def sign(pkey, digest) -> self

CRL に秘密鍵で署名します。

- **param** `pkey` -- 秘密鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) オブジェクト)
- **param** `digest` -- ハッシュアルゴリズム
- **raise** `OpenSSL::X509::CRLError` -- 署名に失敗した場合に発生します
