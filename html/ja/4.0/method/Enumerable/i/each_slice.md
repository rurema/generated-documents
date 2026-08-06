# Enumerable#each_slice

### def each_slice(n)               -> Enumerator
### def each_slice(n) {|list| ... } -> self

n 要素ずつブロックに渡して繰り返します。

要素数が n で割り切れないときは、最後の回だけ要素数が減ります。

ブロックを省略した場合は
n 要素ずつ繰り返す [Enumerator](../../../class/Enumerator.md) を返します。

- **param** `n` --   区切る要素数を示す整数です。

```ruby title="例"
(1..10).each_slice(3) {|a| p a}
    # => [1, 2, 3]
    #    [4, 5, 6]
    #    [7, 8, 9]
    #    [10]
```

- **SEE** [Enumerable#each_cons](../../../method/Enumerable/i/each_cons.md)
