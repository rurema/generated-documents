# Array#reject

### def reject               -> Enumerator
{: since=""}
### def reject {|item| ... } -> [object]
{: since=""}

各要素に対してブロックを評価し、その値が偽であった要素を集めた新しい配列を返します。
条件を反転させた select です。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
# 偶数を除外する (奇数を集める)
p [1, 2, 3, 4, 5, 6].reject {|i| i % 2 == 0 }  # => [1, 3, 5]
```

- **SEE** [Array#select](../../../method/Array/i/select.md), [Enumerable#reject](../../../method/Enumerable/i/reject.md)
- **SEE** [Enumerable#grep_v](../../../method/Enumerable/i/grep_v.md)
