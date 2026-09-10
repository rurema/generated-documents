# OpenSSL::PKey::PKey#decrypt

### def decrypt(data) -> String
### def decrypt(data, options) -> String

`self` の秘密鍵の部分を使って data を復号します。

暗号化のパラメータの詳細と使用例は [OpenSSL::PKey::PKey#encrypt](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/encrypt.md) を参照してください。

- **param** `data` -- 復号する文字列
- **param** `options` -- [OpenSSL::PKey::PKey#encrypt](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/encrypt.md) を参照してください
- **return** -- 復号されたデータの文字列
- **raise** `OpenSSL::PKey::PKeyError` -- 復号に失敗した場合に発生します
- **SEE** [OpenSSL::PKey::PKey#encrypt](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/encrypt.md)
