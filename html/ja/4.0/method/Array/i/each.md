# Array#each

### def each {|item| .... }    -> self
### def each                   -> Enumerator

各要素に対してブロックを評価します。

ブロックが与えられなかった場合は、自身と each から生成した
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

```ruby title="例"
[1, 2, 3].each do |i|
  puts i
end
# => 1
#   2
#   3
```


- **SEE** [Array#each_index](../../../method/Array/i/each_index.md), [Array#reverse_each](../../../method/Array/i/reverse_each.md)
