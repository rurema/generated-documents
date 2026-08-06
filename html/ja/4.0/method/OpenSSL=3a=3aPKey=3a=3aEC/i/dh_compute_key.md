# OpenSSL::PKey::EC#dh_compute_key

### def dh_compute_key(pubkey) -> String

自分の秘密鍵と相手の公開鍵から ECDH によって鍵文字列を計算し、返します。

相手の公開鍵は [OpenSSL::PKey::EC::Point](../../../class/OpenSSL=3a=3aPKey=3a=3aEC=3a=3aPoint.md) オブジェクトである必要があります。

- **param** `pubkey` -- 相手の公開鍵
- **raise** `OpenSSL::PKey::ECError` -- 鍵交換に失敗した場合に発生します
