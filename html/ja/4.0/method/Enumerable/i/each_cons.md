# Enumerable#each_cons

### def each_cons(n)               -> Enumerator
### def each_cons(n) {|list| ... } -> self

要素を重複ありで n 要素ずつに区切り、ブロックに渡して繰り返します。

ブロックを省略した場合は重複ありで
n 要素ずつ繰り返す [Enumerator](../../../class/Enumerator.md) を返します。

- **param** `n` -- ブロックに渡す要素の数です。正の整数を与えます。
         要素数より大きな数を与えると、ブロックは一度も実行されません。

```ruby title="例"
(1..10).each_cons(3){|v| p v }
# => [1, 2, 3]
#    [2, 3, 4]
#    [3, 4, 5]
#    [4, 5, 6]
#    [5, 6, 7]
#    [6, 7, 8]
#    [7, 8, 9]
#    [8, 9, 10]
```

- **SEE** [Enumerable#each_slice](../../../method/Enumerable/i/each_slice.md)
