# Matrix#map

### def map(which = :all) {|x| ... } -> Matrix
### def collect(which = :all) {|x| ... } -> Matrix
### def map(which = :all) -> Enumerator
### def collect(which = :all) -> Enumerator

行列の各要素に対してブロックの適用を繰り返した結果を、要素として持つ行列を生成します。

ブロックがない場合、 [Enumerator](../../../class/Enumerator.md) を返します。

- **param** `which` --  which に以下の [Symbol](../../../class/Symbol.md) を指定することで、
              引数として使われる要素を限定できます。
              デフォルトは、:all (全ての要素)です。
              指定できる [Symbol](../../../class/Symbol.md) の詳細は、 [Matrix#each](../../../method/Matrix/i/each.md) の項目を参照して下さい。

```ruby title="例"
require 'matrix'

m = Matrix[[1, 2], [3, 4]]
p m.map { |x| x + 100 } # => Matrix[[101, 102], [103, 104]]
p m.map(:diagonal) { |x| x * 10 } # => Matrix[[10, 2], [3, 40]]
```

- **SEE** [Matrix#each](../../../method/Matrix/i/each.md), [Matrix#map!](../../../method/Matrix/i/map=21.md)
