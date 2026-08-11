# LUSolve?.lusolve

### module_function def lusolve(a, b, ps, zero = 0.0) -> [BigDecimal]

LU 分解を用いて、連立1次方程式 Ax = b の解 x を求めて返します。

- **param** `a` -- 行列を [BigDecimal](../../../class/BigDecimal.md) の配列で指定します。
         各要素を Row-major order で並べて 1 次元の配列にし、
         [LUSolve?.ludecomp](../../../method/LUSolve/m/ludecomp.md) で変換したものを指定します。

- **param** `b` -- ベクトルを [BigDecimal](../../../class/BigDecimal.md) の配列で指定します。

- **param** `ps` -- [LUSolve?.ludecomp](../../../method/LUSolve/m/ludecomp.md) の返り値を指定します。

- **param** `zero` -- 0.0 を表す値を指定します。

```ruby
require 'bigdecimal'
require 'bigdecimal/util'
require 'bigdecimal/ludcmp'

include LUSolve

a = [['1.0', '2.0'], ['3.0', '1.0']].flatten.map(&:to_d)
# x = ['1.0', -1.0']
b = ['-1.0', '2.0'].map(&:to_d)

zero = '0.0'.to_d
one = '1.0'.to_d
# 以下の 2 行は
ps = ludecomp(a, b.size, zero, one)  # a が破壊的に変更される
x = lusolve(a, b, ps, zero)
# こう書いてもよい
# x = lusolve(a, b, ludecomp(a, b.size, zero, one), zero)

p x.map(&:to_f)  # => [1.0, -1.0]
```
