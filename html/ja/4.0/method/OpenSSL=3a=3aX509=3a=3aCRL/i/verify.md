# OpenSSL::X509::CRL#verify

### def verify(key) -> bool

発行者の公開鍵で CRL に記載されている署名を検証します。

検証に成功した場合は true を返します。

- **param** `key` -- 公開鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) オブジェクト)
- **raise** `OpenSSL::X509::CRLError` -- 検証時にエラーが生じた場合に発生します
