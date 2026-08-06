# Array#filter

### def select    -> Enumerator
{: since=""}
### def filter    -> Enumerator
### def select {|item| ... }   -> [object]
{: since=""}
### def filter {|item| ... }   -> [object]

各要素に対してブロックを評価した値が真であった要素を全て含む配列を返します。真になる要素がひとつもなかった場合は空の配列を返します。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
p [1,2,3,4,5].select                    # => #<Enumerator: [1, 2, 3, 4, 5]:select>
p [1,2,3,4,5].select { |num| num.even? }  # => [2, 4]
```

- **SEE** [Enumerable#select](../../../method/Enumerable/i/select.md)
- **SEE** [Array#select!](../../../method/Array/i/select=21.md)
