# Matrix#row

### def row(i) -> Vector | nil
### def row(i) {|x| ... } -> self

i 番目の行を [Vector](../../../class/Vector.md) オブジェクトで返します。
i 番目の行が存在しない場合は nil を返します。
ブロックが与えられた場合はその行の各要素についてブロックを繰り返します。

[Vector](../../../class/Vector.md) オブジェクトは [Matrix](../../../class/Matrix.md) オブジェクトとの演算の際には列ベクトルとして扱われることに注意してください。

- **param** `i` -- 行の位置を指定します。
         先頭の行が 0 番目になります。i の値が負の時には末尾からのインデックスとみなします。末尾の行が -1 番目になります。

```ruby title="例"
require 'matrix'
a1 = [1, 2, 3]
a2 = [10, 15, 20]
a3 = [-1, -2, 1.5]
m = Matrix[a1, a2, a3]

p m.row(1) # => Vector[10, 15, 20]

cnt = 0
m.row(0) { |x|
  cnt = cnt + x
}
p cnt # => 6
```
