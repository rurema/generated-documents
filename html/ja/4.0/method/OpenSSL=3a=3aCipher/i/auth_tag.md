# OpenSSL::Cipher#auth_tag

### def auth_tag(tag_len = 16) -> String
### def auth_tag=(string)

認証付き暗号(AEAD)の認証タグを取得・設定します。

`auth_tag` は [OpenSSL::Cipher#final](../../../method/OpenSSL=3a=3aCipher/i/final.md) で暗号化を確定させた後に呼び出し、生成された認証タグを取得します。返り値は tag_len バイトの文字列です。暗号モードによっては、暗号化を始める前に `auth_tag_len=` で長さをあらかじめ指定しておく必要があります。

`auth_tag=` は、復号時に暗号文の完全性を検証するための認証タグを設定します。[OpenSSL::Cipher#final](../../../method/OpenSSL=3a=3aCipher/i/final.md) を呼ぶ前に設定しておく必要があります。CCM モードや OCB モードでは、復号を始める前に `auth_tag_len=` でタグの長さを設定しておく必要があります。

- **param** `tag_len` -- 取得する認証タグの長さ(バイト数)
- **param** `string` -- 設定する認証タグ
- **raise** `OpenSSL::Cipher::CipherError` -- この暗号方式が認証タグに対応していない場合に発生します
