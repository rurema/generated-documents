# Array#bsearch_index

### def bsearch_index { |x| ... } -> Integer | nil
### def bsearch_index             -> Enumerator

ブロックの評価結果で範囲内の各要素の判定を行い、条件を満たす値の位置を二分探索(計算量は O(log n))で検索します。要素が見つからない場合は nil
を返します。self はあらかじめソートしておく必要があります。

本メソッドは[Array#bsearch](../../../method/Array/i/bsearch.md)と同様に、ブロックを評価した結果により2
つのモードで動作します。[Array#bsearch](../../../method/Array/i/bsearch.md) との違いは見つかった要素自身を返すか位置を返すかのみです。各モードのより詳細な違いについては
[Array#bsearch](../../../method/Array/i/bsearch.md) を参照してください。

```ruby title="例: find-minimum モード"
ary = [0, 4, 7, 10, 12]
p ary.bsearch_index { |x| x >=   4 } # => 1
p ary.bsearch_index { |x| x >=   6 } # => 2
p ary.bsearch_index { |x| x >=  -1 } # => 0
p ary.bsearch_index { |x| x >= 100 } # => nil
```

```ruby title="例: find-any モード"
ary = [0, 4, 7, 10, 12]
# 4 <= v < 8 になる要素の位置を検索
p ary.bsearch_index { |x| 1 - x / 4 } # => 2
# 8 <= v < 10 になる要素の位置を検索
p ary.bsearch_index { |x| 4 - x / 2 } # => nil
```

- **SEE** [Array#bsearch](../../../method/Array/i/bsearch.md)
