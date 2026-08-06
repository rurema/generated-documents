# OpenSSL::PKey::EC#private_key=

### def private_key=(privkey)

秘密鍵となる整数を設定します。

nil を渡すことで EC オブジェクトが公開鍵のみを持つ状態に変更できます。

- **param** `privkey` -- 設定する秘密鍵([OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト)
- **raise** `OpenSSL::PKey::ECError` -- 秘密鍵の設定に失敗した場合に発生します
- **SEE** [OpenSSL::PKey::EC#private_key](../../../method/OpenSSL=3a=3aPKey=3a=3aEC/i/private_key.md)
