# Array#hash

### def hash    -> Integer

自身のハッシュ値を整数で返します。ハッシュ値は自身の各要素のハッシュ値から計算されます。[Array#eql?](../../../method/Array/i/eql=3f.md) で比較して等しい配列同士は同じハッシュ値を返します。

```ruby title="例"
a = ["a", "b", 1]
p a.hash              #=>  321
b = a.dup
p b.hash              #=>  321

p ["a", 1, "b"].hash  #=>  491
p ["a", 1.0, "b"].hash  #=>  466227
```
