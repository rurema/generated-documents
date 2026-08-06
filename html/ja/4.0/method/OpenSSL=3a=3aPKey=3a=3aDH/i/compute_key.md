# OpenSSL::PKey::DH#compute_key

### def compute_key(bn) -> String

自分の秘密鍵と相手の公開鍵から鍵文字列を計算し、返します。

相手の公開鍵は [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) か [Integer](../../../class/Integer.md) である必要があります。

- **param** `bn` -- 相手の公開鍵(OpenSSL::BN)
