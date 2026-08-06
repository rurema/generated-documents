# Enumerator::Product.new

### def Enumerator::Product.new(*enums) -> Enumerator::Product

与えた [Enumerable](../../../class/Enumerable.md) なオブジェクトの直積を列挙する Enumerator を作って返します。

- **param** `enums` -- 直積を取る [Enumerable](../../../class/Enumerable.md) なオブジェクトを指定します。

```ruby title="例"
e = Enumerator::Product.new(1..3, [4, 5])
p e.to_a # => [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
p e.size # => 6
```

- **SEE** [Enumerator.product](../../../method/Enumerator/s/product.md)
