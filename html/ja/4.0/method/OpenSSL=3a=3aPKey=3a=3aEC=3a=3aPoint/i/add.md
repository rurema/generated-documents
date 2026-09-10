# OpenSSL::PKey::EC::Point#add

### def add(point) -> OpenSSL::PKey::EC::Point

楕円曲線上の点の加算を行います。

`self` と point の和を表す新しい [OpenSSL::PKey::EC::Point](../../../class/OpenSSL=3a=3aPKey=3a=3aEC=3a=3aPoint.md) オブジェクトを返します。

- **param** `point` -- 加算するもう一方の [OpenSSL::PKey::EC::Point](../../../class/OpenSSL=3a=3aPKey=3a=3aEC=3a=3aPoint.md) オブジェクト
- **return** -- 演算結果を表す新しい [OpenSSL::PKey::EC::Point](../../../class/OpenSSL=3a=3aPKey=3a=3aEC=3a=3aPoint.md) オブジェクト
- **raise** `OpenSSL::PKey::EC::Point::Error` -- 演算に失敗した場合に発生します
