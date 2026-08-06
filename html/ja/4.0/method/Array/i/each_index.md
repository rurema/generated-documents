# Array#each_index

### def each_index {|index| .... }    -> self
### def each_index                    -> Enumerator

各要素のインデックスに対してブロックを評価します。

以下と同じです。

```ruby title="例"
(0 ... ary.size).each do |index|
  # ....
end
```

ブロックが与えられなかった場合は、自身と each_index から生成した
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

- **SEE** [Array#each](../../../method/Array/i/each.md), [Array#reverse_each](../../../method/Array/i/reverse_each.md)
