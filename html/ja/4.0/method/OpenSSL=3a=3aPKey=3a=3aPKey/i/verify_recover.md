# OpenSSL::PKey::PKey#verify_recover

### def verify_recover(digest, signature) -> String
### def verify_recover(digest, signature, options) -> String

公開鍵の部分を使って、signature から署名対象のデータを復元します。すべての署名アルゴリズムがこの操作に対応しているわけではありません。

- **param** `digest` -- [OpenSSL::PKey::PKey#sign_raw](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/sign_raw.md) を参照してください
- **param** `signature` -- 検証する署名の文字列
- **param** `options` -- [OpenSSL::PKey::PKey#sign_raw](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/sign_raw.md) を参照してください
- **return** -- signature から復元されたデータの文字列
- **raise** `OpenSSL::PKey::PKeyError` -- 復元に失敗した場合に発生します
