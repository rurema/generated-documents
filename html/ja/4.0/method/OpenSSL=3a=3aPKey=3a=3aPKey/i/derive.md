# OpenSSL::PKey::PKey#derive

### def derive(peer_pkey) -> String

`self` と peer_pkey から共有の秘密鍵を導出します。

`self` は秘密鍵の部分を、peer_pkey は公開鍵の部分を含んでいる必要があります。

- **param** `peer_pkey` -- 相手の公開鍵を含む [OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) オブジェクト
- **return** -- 導出された共有の秘密鍵の文字列
- **raise** `OpenSSL::PKey::PKeyError` -- 導出に失敗した場合に発生します
