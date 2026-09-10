# OpenSSL::Cipher#auth_tag_len=

### def auth_tag_len=(integer)

認証付き暗号(AEAD)で生成される認証タグの長さを設定します。

CCM モードや OCB モードなど、暗号化・復号を始める前にタグの長さを指定しておく必要がある一部の AEAD 暗号で使います。CCM モードと OCB モードでは、[OpenSSL::Cipher#iv=](../../../method/OpenSSL=3a=3aCipher/i/iv=3d.md) を設定するより前にこのメソッドを呼び出す必要があります。

- **param** `integer` -- 認証タグの長さ(バイト数)
- **raise** `OpenSSL::Cipher::CipherError` -- AEAD に対応していない暗号で呼び出した場合に発生します
- **SEE** [OpenSSL::Cipher#auth_tag](../../../method/OpenSSL=3a=3aCipher/i/auth_tag.md)
