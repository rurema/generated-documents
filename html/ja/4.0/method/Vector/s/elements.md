# Vector.elements

### def Vector.elements(a, copy = true) -> Vector

配列 `a` を要素とするベクトルを生成します。
ただし、オプション引数 `copy` が偽 (`false`) ならば、複製を行いません。

- **param** `a` --     [Vector](../../../class/Vector.md)を生成する際の要素の配列
- **param** `copy` --  引数の配列 `a` のコピーをするかどうかのフラグ

```ruby title="例"
require 'matrix'

a = [1, 2, 3]
v1 = Vector.elements(a, true)
v2 = Vector.elements(a, false)
p v1        # => Vector[1, 2, 3]
p v2        # => Vector[1, 2, 3]
a[0] = -1
p v1        # => Vector[1, 2, 3]
p v2        # => Vector[-1, 2, 3]
```
