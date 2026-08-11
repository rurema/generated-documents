# Enumerable#group_by

### def group_by               -> Enumerator
### def group_by {|obj| ... }  -> Hash

ブロックを評価した結果をキー、対応する要素の配列を値とするハッシュを返します。

```ruby title="例"
p (1..6).group_by {|i| i%3} # => {0=>[3, 6], 1=>[1, 4], 2=>[2, 5]}
```

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。
