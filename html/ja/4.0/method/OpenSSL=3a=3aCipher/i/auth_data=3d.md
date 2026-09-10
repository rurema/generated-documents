# OpenSSL::Cipher#auth_data=

### def auth_data=(data)

認証付き暗号(AEAD)の追加認証データ(AAD、associated data とも呼ばれます)を設定します。

このデータ自体は暗号化されませんが、認証タグの計算に含まれ、暗号文の完全性の検証に使われます。

このメソッドは [OpenSSL::Cipher#key=](../../../method/OpenSSL=3a=3aCipher/i/key=3d.md) と [OpenSSL::Cipher#iv=](../../../method/OpenSSL=3a=3aCipher/i/iv=3d.md) を呼んだ後、[OpenSSL::Cipher#update](../../../method/OpenSSL=3a=3aCipher/i/update.md) で暗号化・復号を始める前に呼ぶ必要があります。暗号モードによっては、その前に `auth_tag_len=` や `ccm_data_len=` の呼び出しが必要になることもあります。

- **param** `data` -- 追加認証データ
- **raise** `OpenSSL::Cipher::CipherError` -- AEAD に対応していない暗号で呼び出した場合に発生します
