# OpenSSL::PKey::EC::Point.new

### def OpenSSL::PKey::EC::Point.new(point) -> OpenSSL::PKey::EC::Point
### def OpenSSL::PKey::EC::Point.new(group) -> OpenSSL::PKey::EC::Point
### def OpenSSL::PKey::EC::Point.new(group, bn) -> OpenSSL::PKey::EC::Point

Point オブジェクトを生成します。

引数に OpenSSL::PKey::EC::Point オブジェクトを渡した場合はそれを複製します。

引数に OpenSSL::PKey::EC::Group オブジェクトを渡した場合はそれに関連付けられたオブジェクトを返します。

引数に OpenSSL::PKey::EC::Group オブジェクトと整数を渡した場合は、整数で定義される点を返します。

- **param** `point` -- 複製する [OpenSSL::PKey::EC::Point](../../../class/OpenSSL=3a=3aPKey=3a=3aEC=3a=3aPoint.md) オブジェクト
- **param** `group` -- 関連付ける群([OpenSSL::PKey::EC::Group](../../../class/OpenSSL=3a=3aPKey=3a=3aEC=3a=3aGroup.md) オブジェクト)
- **param** `bn` -- 点を表す整数([OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト)
- **raise** `OpenSSL::PKey::EC::Point::Error` -- オブジェクトの生成に失敗した場合に発生します。
