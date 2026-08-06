# Array#transpose

### def transpose    -> Array

自身を行列と見立てて、行列の転置(行と列の入れ換え)を行います。転置した配列を生成して返します。空の配列に対しては空の配列を生成して返します。

それ以外の一次元の配列に対しては、例外
[TypeError](../../../class/TypeError.md) が発生します。各要素のサイズが不揃いな配列に対しては、例外 [IndexError](../../../class/IndexError.md) が発生します。

```ruby title="例"
p [[1,2],
   [3,4],
   [5,6]].transpose
# => [[1, 3, 5], [2, 4, 6]]

p [].transpose
# => []

p [1,2,3].transpose

# => -:1:in 'transpose': cannot convert Fixnum into Array (TypeError)
#       from -:1

p [[1,2],
   [3,4,5],
   [6,7]].transpose
# => -:3:in 'transpose': element size differ (3 should be 2) (IndexError)
```
