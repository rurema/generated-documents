# Array#intersection

### def intersection(*other_arrays) -> Array

自身と引数に渡された配列の共通要素を新しい配列として返します。
要素が重複する場合は、そのうちの1つのみを返します。
要素の順序は自身の順序を維持します。

- **param** `other_arrays` -- 自身と共通要素を取りたい配列を指定します。
                    配列以外のオブジェクトを指定した場合は to_ary
                    メソッドによる暗黙の型変換を試みます。

- **raise** `TypeError` -- 引数に配列以外の(暗黙の型変換が行えない)オブジェクトを指定した場合に発生します。

intersectionは[Object#hash](../../../method/Object/i/hash.md)と[Object#eql?](../../../method/Object/i/eql=3f.md)を使って比較を行います。

```ruby title="例"
p [1, 1, 3, 5].intersection([3, 2, 1])                # => [1, 3]
p ["a", "b", "z"].intersection(["a", "b", "c"], ["b"])  # => ["b"]
p ["a"].intersection                                  # => ["a"]
```

- **SEE** [Set#intersection](../../../method/Set/i/intersection.md), [Array#&](../../../method/Array/i/=26.md)
