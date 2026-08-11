# Matrix#collect!

### def map!(which = :all) {|element| ... } -> self
### def collect!(which = :all) {|element| ... } -> self
### def map!(which = :all) -> Enumerator
### def collect!(which = :all) -> Enumerator

行列の各要素に対してブロックの適用を繰り返した結果で要素を置き換えます。

ブロックのない場合は、自身と map! から生成した [Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

- **param** `which` --  which に以下の [Symbol](../../../class/Symbol.md) を指定することで、引数として使われる要素を限定できます。
              デフォルトは、:all (全ての要素)です。
              指定できる [Symbol](../../../class/Symbol.md) の詳細は、 [Matrix#each](../../../method/Matrix/i/each.md) の項目を参照して下さい。

```ruby title="例"
require 'matrix'

m = Matrix[[1, 2], [3, 4]]

p m.map! { |element| element * 10 } # => Matrix[[10, 20], [30, 40]]
p m                                 # => Matrix[[10, 20], [30, 40]]
```

- **SEE** [Matrix#each](../../../method/Matrix/i/each.md), [Matrix#map](../../../method/Matrix/i/map.md)
