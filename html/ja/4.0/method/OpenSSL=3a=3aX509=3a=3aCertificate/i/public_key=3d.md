# OpenSSL::X509::Certificate#public_key=

### def public_key=(pkey)

証明書に公開鍵を設定します。

- **param** `pkey` -- 公開鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md)のサブクラスのインスタンス)
- **raise** `OpenSSL::X509::CertificateError` -- 鍵の設定に失敗した場合に発生します
