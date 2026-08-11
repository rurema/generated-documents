# Array#union

### def union(*other_arrays) -> Array

集合の和演算です。self と other_arrays の配列にどれかに含まれる要素を全て含む新しい配列を返します。重複する要素は取り除かれます。

要素の重複判定は、[Object#eql?](../../../method/Object/i/eql=3f.md) と [Object#hash](../../../method/Object/i/hash.md) により行われます。

- **param** `other_arrays` -- 0個以上の配列を指定します。

```ruby title="例"
p ["a", "b", "c"].union([ "c", "d", "a" ])  # => ["a", "b", "c", "d"]
p ["a"].union(["e", "b"], ["a", "c", "b"])  # => ["a", "e", "b", "c"]
p ["a"].union # => ["a"]
```

- **SEE** [Array#|](../../../method/Array/i/=7c.md)
