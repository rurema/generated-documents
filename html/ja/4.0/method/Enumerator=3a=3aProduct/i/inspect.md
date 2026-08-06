# Enumerator::Product#inspect

### def inspect -> String

self を人間が読みやすい形式の文字列にして返します。

```ruby title="例"
e = Enumerator::Product.new(1..3, [4, 5])
p e.inspect # => "#<Enumerator::Product: [1..3, [4, 5]]>"
```
