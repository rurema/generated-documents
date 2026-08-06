# OpenSSL::X509::Request#public_key

### def public_key -> OpenSSL::PKey::PKey

申請者の公開鍵を返します。

実際には [OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) 自体のインスタンスでなく、そのサブクラスを返します。

- **raise** `OpenSSL::X509::RequestError` -- 公開鍵の取得に失敗した場合に発生します
- **raise** `OpenSSL::PKey::PKeyError` -- 鍵の形式が不正であった場合に発生します
