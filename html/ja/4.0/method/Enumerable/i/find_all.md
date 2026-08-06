# Enumerable#find_all

### def find_all  -> Enumerator
### def select    -> Enumerator
### def filter    -> Enumerator
### def find_all {|item| ... } -> [object]
### def select {|item| ... }   -> [object]
### def filter {|item| ... }   -> [object]

各要素に対してブロックを評価した値が真であった要素を全て含む配列を返します。真になる要素がひとつもなかった場合は空の配列を返します。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
p (1..10).find_all                      # => #<Enumerator: 1..10:find_all>
p (1..10).find_all { |i| i % 3 == 0 }   # => [3, 6, 9]

p [1,2,3,4,5].select                    # => #<Enumerator: [1, 2, 3, 4, 5]:select>
p [1,2,3,4,5].select { |num| num.even? }  # => [2, 4]
```

- **SEE** [Enumerable#reject](../../../method/Enumerable/i/reject.md)
- **SEE** [Enumerable#grep](../../../method/Enumerable/i/grep.md)
