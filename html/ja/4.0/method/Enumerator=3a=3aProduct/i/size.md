# Enumerator::Product#size

### def size -> Integer | Float::INFINITY | nil

直積の要素数を返します。

各オブジェクトのサイズの積を返します。
サイズが分からないオブジェクトが含まれる場合は nil を、無限に続くオブジェクトが含まれる場合は [Float::INFINITY](../../../method/Float/c/INFINITY.md) を返します。

```ruby title="例"
p Enumerator::Product.new(1..3, [4, 5]).size    # => 6
p Enumerator::Product.new(1.., [4, 5]).size     # => Infinity
```
