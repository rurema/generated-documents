# OpenSSL::PKey?.new_raw_private_key

### module_function def new_raw_private_key(algo, string) -> OpenSSL::PKey::PKey

生の秘密鍵のバイト列 string から、アルゴリズム algo の鍵を生成します。

X25519 や Ed25519 のように、raw private/public key 形式を使う公開鍵アルゴリズム向けのメソッドです。

- **param** `algo` -- アルゴリズムを表す文字列
- **param** `string` -- 生の秘密鍵のバイト列
- **raise** `OpenSSL::PKey::PKeyError` -- 鍵の生成に失敗した場合に発生します
- **SEE** [OpenSSL::PKey::PKey#raw_private_key](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/raw_private_key.md), [OpenSSL::PKey?.new_raw_public_key](../../../method/OpenSSL=3a=3aPKey/m/new_raw_public_key.md)
