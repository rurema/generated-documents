# OpenSSL::PKey::PKey#public_to_pem

### def public_to_pem -> String

公開鍵を PEM 形式の X.509 SubjectPublicKeyInfo 形式にシリアライズします。

PEM データは "-----BEGIN PUBLIC KEY-----" で始まります。

- **raise** `OpenSSL::PKey::PKeyError` -- 公開鍵やパラメータの情報が無い場合などに発生します
