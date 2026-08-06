# Enumerable#reject

### def reject               -> Enumerator
### def reject {|item| ... } -> [object]

各要素に対してブロックを評価し、その値が偽であった要素を集めた新しい配列を返します。
条件を反転させた select です。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
# 偶数を除外する (奇数を集める)
p (1..6).reject {|i| i % 2 == 0 } # => [1, 3, 5]
```

- **SEE** [Enumerable#select](../../../method/Enumerable/i/select.md), [Array#reject](../../../method/Array/i/reject.md)
- **SEE** [Enumerable#grep_v](../../../method/Enumerable/i/grep_v.md)
