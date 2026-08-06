# OpenSSL::X509::Request#public_key=

### def public_key=(pkey)

申請者の公開鍵を設定します。

- **param** `pkey` -- 設定する公開鍵を [OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) のサブクラスのインスタンスで渡します
- **raise** `OpenSSL::X509::RequestError` -- 公開鍵の設定に失敗した場合に発生します
