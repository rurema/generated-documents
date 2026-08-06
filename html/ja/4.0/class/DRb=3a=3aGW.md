# class DRb::GW < Object

drb 通信中継のためのゲートウェイです。

中継プロセス上のこのオブジェクトに、各リモートプロセスが中継を望むオブジェクトを登録します。そして別のプロセスがそれを取りだすことで
(中継された)通信を開始します。インターフェースは [Hash](../class/Hash.md) に似ています。

詳しくは [drb/gw](../library/drb=2fgw.md) の例を見てください。

## Class Methods

- [new](../method/DRb=3a=3aGW/s/new.md)

## Instance Methods

- [\[\]](../method/DRb=3a=3aGW/i/=5b=5d.md)
- [\[\]=](../method/DRb=3a=3aGW/i/=5b=5d=3d.md)
