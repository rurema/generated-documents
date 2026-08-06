# Vector#collect

### def collect {|x| ... } -> Vector
### def map {|x| ... } -> Vector
### def collect -> Enumerator
### def map -> Enumerator

ベクトルの各要素に対してブロックを評価した結果を、要素として持つベクトルを生成します。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
require 'matrix'

v = Vector[1, 2, 3.5]
p v.map{ |x| x * -1 }
# => Vector[-1, -2, -3.5]
```
