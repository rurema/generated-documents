# Vector#collect!

### def collect! {|element| ... } -> self
### def map! {|element| ... } -> self
### def collect! -> Enumerator
### def map! -> Enumerator

ベクトルの各要素を順番にブロックに渡して評価し、その結果で要素を置き換えます。

ブロックのない場合は、`self` と `map!` から生成した [Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

```ruby title="例"
require 'matrix'

v = Vector[1, 2, 3]
v.map!{ |el| el * 2 }
p v # => Vector[2, 4, 6]
```
