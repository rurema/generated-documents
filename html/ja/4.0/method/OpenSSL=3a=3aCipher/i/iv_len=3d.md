# OpenSSL::Cipher#iv_len=

### def iv_len=(integer)

認証付き暗号(AEAD)で、IV(nonce)の長さを変更します。

可変長の IV に対応した AEAD 暗号において、OpenSSL のデフォルトと異なる長さの IV を使いたい場合に、[OpenSSL::Cipher#iv=](../../../method/OpenSSL=3a=3aCipher/i/iv=3d.md) を呼ぶ前に使用します。

- **param** `integer` -- IV の長さ(バイト数)
- **raise** `OpenSSL::Cipher::CipherError` -- AEAD に対応していない暗号で呼び出した場合に発生します
- **SEE** [OpenSSL::Cipher#iv_len](../../../method/OpenSSL=3a=3aCipher/i/iv_len.md)
