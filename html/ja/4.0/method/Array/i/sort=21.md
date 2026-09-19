# Array#sort!

### def sort!               -> self
### def sort! {|a, b| ... } -> self

全ての要素を昇順に破壊的にソートし、self を返します。
要素同士の比較は <=> 演算子を使って行います。
ブロックとともに呼び出された時には、要素同士の比較をブロックを用いて行います。
比較やブロックの扱いは [Array#sort](../../../method/Array/i/sort.md) と同じです。

Array#sort! は安定ではありません (unstable sort)。
安定なソートが必要な場合は [Array#sort_by!](../../../method/Array/i/sort_by=21.md) を使って工夫する必要があります。

```ruby title="例"
ary1 = [ "d", "a", "e", "c", "b" ]
ary1.sort!
p ary1                                  # => ["a", "b", "c", "d", "e"]

ary2 = ["9", "7", "10", "11", "8"]
ary2.sort!{|a, b| a.to_i <=> b.to_i }
p ary2                                  # => ["7", "8", "9", "10", "11"]
```

- **SEE** [Array#sort](../../../method/Array/i/sort.md), [Array#sort_by!](../../../method/Array/i/sort_by=21.md)
