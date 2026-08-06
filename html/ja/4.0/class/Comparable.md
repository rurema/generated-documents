# module Comparable

比較演算を許すクラスのための Mix-in です。このモジュールをインクルードするクラスは、基本的な比較演算子である <=> 演算子を定義している必要があります。

self <=> other は
- self が other より大きいなら正の整数
- self と other が等しいなら 0
- self が other より小さいなら負の整数
- self と other が比較できない場合は nil
をそれぞれ返すことが期待されています。

他の比較演算子は、 <=> 演算子を利用して定義されます。

## Instance Methods

- [<](../method/Comparable/i/=3c.md)
- [<=](../method/Comparable/i/=3c=3d.md)
- [==](../method/Comparable/i/=3d=3d.md)
- [>](../method/Comparable/i/=3e.md)
- [>=](../method/Comparable/i/=3e=3d.md)
- [between?](../method/Comparable/i/between=3f.md)
- [clamp](../method/Comparable/i/clamp.md)
