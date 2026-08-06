# OpenSSL::Netscape::SPKI#verify

### def verify(key) -> bool

署名を検証します。

検証に成功した場合は true を返し、失敗した場合は false を返します。

- **param** `key` -- 署名に使う公開鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) オブジェクト)
- **raise** `OpenSSL::Netscape::SPKIError` -- 検証時にエラーが起きた場合に発生します
- **SEE** [OpenSSL::Netscape::SPKI#sign](../../../method/OpenSSL=3a=3aNetscape=3a=3aSPKI/i/sign.md)
