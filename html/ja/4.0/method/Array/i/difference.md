# Array#difference

### def difference(*other_arrays) -> Array

自身から other_arrays の要素を取り除いた配列を生成して返します。

要素の同一性は [Object#hash](../../../method/Object/i/hash.md) と [Object#eql?](../../../method/Object/i/eql=3f.md) により評価されます。
self 中で重複していて、other_arrays中に存在していなかった要素は、その重複が保持されます。
新しい配列における要素の順は self における要素の順と同じです。

```ruby title="例"
p [ 1, 1, 2, 2, 3, 3, 4, 5 ].difference([ 1, 2, 4 ])     # => [ 3, 3, 5 ]
p [ 1, 'c', :s, 'yep' ].difference([ 1 ], [ 'a', 'c' ])  # => [:s, "yep"]
```

集合のような振る舞いが必要なら [Set](../../../class/Set.md) も参照してください。

- **SEE** [Array#-](../../../method/Array/i/=2d.md)
