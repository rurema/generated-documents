# Matrix#real?

### def real? -> bool

行列の全要素が実([Numeric#real?](../../../method/Numeric/i/real=3f.md))であれば true を返します。

Complexオブジェクトを要素に持つ場合は虚部が0でも偽を返します。

```ruby title="例"
require 'matrix'
p Matrix[[1, 0], [0, 1]].real? # => true
p Matrix[[1i, 0], [0, 1]].real? # => false
# 要素が実数であっても Complex オブジェクトなら偽を返す。
p Matrix[[1+0i, 0], [0, 1]].real? # => false
```
