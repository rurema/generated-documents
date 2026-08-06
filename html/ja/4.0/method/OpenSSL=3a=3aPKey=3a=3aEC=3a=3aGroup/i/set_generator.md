# OpenSSL::PKey::EC::Group#set_generator

### def set_generator(generator, order, cofactor) -> self

群のパラメータを設定します。

- **param** `generator` -- 生成元([OpenSSL::PKey::EC::Point](../../../class/OpenSSL=3a=3aPKey=3a=3aEC=3a=3aPoint.md) オブジェクト)
- **param** `order` -- 生成元の位数([OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト)
- **param** `cofactor` -- 余因子[OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **raise** `OpenSSL::PKey::EC::Group::Error` -- 設定に失敗した場合に発生します
