# OpenSSL::PKey::EC::Point#mul

### def mul(bn1, bn2 = nil) -> OpenSSL::PKey::EC::Point

楕円曲線上の点のスカラー倍算を行います。

`bn1 * self + bn2 * G` を計算した結果を表す新しい [OpenSSL::PKey::EC::Point](../../../class/OpenSSL=3a=3aPKey=3a=3aEC=3a=3aPoint.md) オブジェクトを返します。ここで G は `self` が属する群の生成元です。bn2 を省略した場合は、単に `bn1 * self` を計算します。

Ruby 3.4 までは、複数の点と係数の配列を渡す `point.mul(bns, points [, bn2])` という形式もサポートされていましたが、Ruby 4.0 で廃止されました。

- **param** `bn1` -- 掛ける整数を表す [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **param** `bn2` -- 生成元 G に掛ける整数を表す [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクトです(省略可)
- **return** -- 演算結果を表す新しい [OpenSSL::PKey::EC::Point](../../../class/OpenSSL=3a=3aPKey=3a=3aEC=3a=3aPoint.md) オブジェクト
- **raise** `OpenSSL::PKey::EC::Point::Error` -- 演算に失敗した場合に発生します
