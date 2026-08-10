# class Integer < Numeric

整数を表すクラスです。

整数オブジェクトに特異メソッドを追加する事はできません。追加した場合、
[TypeError](../class/TypeError.md) が発生します。

かつて `Integer` クラスのエイリアスであった `Fixnum` と `Bignum` は Ruby 3.2 で削除されました。

`Integer` には [Integer#~](../method/Integer/i/=7e.md) や [Integer#&](../method/Integer/i/=26.md) のようなビット論理演算がいくつか定義されています。これらは、整数を「2 の補数表記」したビット列とみなして、位ごとに論理演算を行うものです。

`Integer` のビット論理演算において、整数は以下の例のように左（上位）に無限に `0` または `1` が続くビット列として扱われます（`..` は、その右隣に書かれた数字が左に向かって無限に続くことを意味する）。

| 10 進表記 | 2 進表記 |  ビット列  |
|:-----:|---------:| --------:|
|  `6` |  `0b110` | `..0110` |
|  `1` |    `0b1` |   `..01` |
|  `0` |    `0b0` |    `..0` |
| `-1` |   `-0b1` |    `..1` |
| `-6` | `-0b110` | `..1010` |

## Class Methods

- [each_prime](../method/Integer/s/each_prime.md)
- [from_prime_division](../method/Integer/s/from_prime_division.md)
- [sqrt](../method/Integer/s/sqrt.md)
- [try_convert](../method/Integer/s/try_convert.md)

## Instance Methods

- [%](../method/Integer/i/=25.md)
- [modulo](../method/Integer/i/modulo.md)
- [&](../method/Integer/i/=26.md)
- [*](../method/Integer/i/=2a.md)
- [**](../method/Integer/i/=2a=2a.md)
- [pow](../method/Integer/i/pow.md)
- [+](../method/Integer/i/=2b.md)
- [-](../method/Integer/i/=2d.md)
- [-@](../method/Integer/i/=2d=40.md)
- [/](../method/Integer/i/=2f.md)
- [<](../method/Integer/i/=3c.md)
- [<<](../method/Integer/i/=3c=3c.md)
- [<=](../method/Integer/i/=3c=3d.md)
- [<=>](../method/Integer/i/=3c=3d=3e.md)
- [==](../method/Integer/i/=3d=3d.md)
- [===](../method/Integer/i/=3d=3d=3d.md)
- [>](../method/Integer/i/=3e.md)
- [>=](../method/Integer/i/=3e=3d.md)
- [>>](../method/Integer/i/=3e=3e.md)
- [\[\]](../method/Integer/i/=5b=5d.md)
- [^](../method/Integer/i/=5e.md)
- [|](../method/Integer/i/=7c.md)
- [~](../method/Integer/i/=7e.md)
- [abs](../method/Integer/i/abs.md)
- [magnitude](../method/Integer/i/magnitude.md)
- [allbits?](../method/Integer/i/allbits=3f.md)
- [anybits?](../method/Integer/i/anybits=3f.md)
- [bit_length](../method/Integer/i/bit_length.md)
- [ceil](../method/Integer/i/ceil.md)
- [ceildiv](../method/Integer/i/ceildiv.md)
- [chr](../method/Integer/i/chr.md)
- [denominator](../method/Integer/i/denominator.md)
- [digits](../method/Integer/i/digits.md)
- [div](../method/Integer/i/div.md)
- [divmod](../method/Integer/i/divmod.md)
- [downto](../method/Integer/i/downto.md)
- [even?](../method/Integer/i/even=3f.md)
- [fdiv](../method/Integer/i/fdiv.md)
- [floor](../method/Integer/i/floor.md)
- [gcd](../method/Integer/i/gcd.md)
- [gcdlcm](../method/Integer/i/gcdlcm.md)
- [inspect](../method/Integer/i/inspect.md)
- [to_s](../method/Integer/i/to_s.md)
- [integer?](../method/Integer/i/integer=3f.md)
- [lcm](../method/Integer/i/lcm.md)
- [next](../method/Integer/i/next.md)
- [succ](../method/Integer/i/succ.md)
- [nobits?](../method/Integer/i/nobits=3f.md)
- [numerator](../method/Integer/i/numerator.md)
- [odd?](../method/Integer/i/odd=3f.md)
- [ord](../method/Integer/i/ord.md)
- [pred](../method/Integer/i/pred.md)
- [prime?](../method/Integer/i/prime=3f.md)
- [prime_division](../method/Integer/i/prime_division.md)
- [rationalize](../method/Integer/i/rationalize.md)
- [remainder](../method/Integer/i/remainder.md)
- [round](../method/Integer/i/round.md)
- [size](../method/Integer/i/size.md)
- [times](../method/Integer/i/times.md)
- [to_bn](../method/Integer/i/to_bn.md)
- [to_d](../method/Integer/i/to_d.md)
- [to_f](../method/Integer/i/to_f.md)
- [to_i](../method/Integer/i/to_i.md)
- [to_int](../method/Integer/i/to_int.md)
- [to_r](../method/Integer/i/to_r.md)
- [truncate](../method/Integer/i/truncate.md)
- [upto](../method/Integer/i/upto.md)
