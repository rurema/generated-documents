# OpenSSL::PKey::PKey#public_to_der

### def public_to_der -> String

公開鍵を DER 形式の X.509 SubjectPublicKeyInfo 形式にシリアライズします。

- **raise** `OpenSSL::PKey::PKeyError` -- 公開鍵やパラメータの情報が無い場合などに発生します
