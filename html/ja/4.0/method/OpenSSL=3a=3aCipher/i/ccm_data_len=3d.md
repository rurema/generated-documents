# OpenSSL::Cipher#ccm_data_len=

### def ccm_data_len=(integer)

CCM モードで、[OpenSSL::Cipher#update](../../../method/OpenSSL=3a=3aCipher/i/update.md) が処理する平文・暗号文全体の長さを設定します。

[OpenSSL::Cipher#key=](../../../method/OpenSSL=3a=3aCipher/i/key=3d.md) と [OpenSSL::Cipher#iv=](../../../method/OpenSSL=3a=3aCipher/i/iv=3d.md) を設定した後、`auth_data=` や [OpenSSL::Cipher#update](../../../method/OpenSSL=3a=3aCipher/i/update.md) を呼ぶより前に呼び出してください。

CCM モードの暗号でのみ使用できます。

- **param** `integer` -- 処理するデータ全体の長さ(バイト数)
- **raise** `OpenSSL::Cipher::CipherError` -- 設定に失敗した場合に発生します
