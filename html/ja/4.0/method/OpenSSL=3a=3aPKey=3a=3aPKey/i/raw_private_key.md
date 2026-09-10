# OpenSSL::PKey::PKey#raw_private_key

### def raw_private_key -> String

`self` の生の秘密鍵をバイト列で返します。

X25519 や Ed25519 のように、raw private/public key 形式を使う公開鍵アルゴリズム向けのメソッドです。

- **raise** `OpenSSL::PKey::PKeyError` -- 取得に失敗した場合に発生します
- **SEE** [OpenSSL::PKey::PKey#raw_public_key](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/raw_public_key.md), [OpenSSL::PKey?.new_raw_private_key](../../../method/OpenSSL=3a=3aPKey/m/new_raw_private_key.md)
