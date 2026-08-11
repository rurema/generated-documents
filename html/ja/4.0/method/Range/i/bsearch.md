# Range#bsearch

### def bsearch {|obj| ... } -> object | nil
### def bsearch              -> Enumerator

ブロックの評価結果で範囲内の各要素の大小判定を行い、条件を満たす値を二分探索(計算量は O(log n))で検索します。要素が見つからない場合は nil を返します。

本メソッドはブロックを評価した結果により以下のいずれかのモードで動作します。

- find-minimum モード
- find-any モード

find-minimum モード(特に理由がない限りはこのモードを使う方がいいでしょう)では、条件判定の結果を以下のようにする必要があります。

- 求める値がブロックパラメータの値か前の要素の場合: true を返す
- 求める値がブロックパラメータより後の要素の場合: false を返す

ブロックの評価結果が true になる最初の要素を返すか、nil を返します。

```ruby title="例"
ary = [0, 4, 7, 10, 12]
p (0...ary.size).bsearch {|i| ary[i] >= 4 } # => 1
p (0...ary.size).bsearch {|i| ary[i] >= 6 } # => 2
p (0...ary.size).bsearch {|i| ary[i] >= 8 } # => 3
p (0...ary.size).bsearch {|i| ary[i] >= 100 } # => nil

p (0.0...Float::INFINITY).bsearch {|x| Math.log(x) >= 0 } # => 1.0
```

find-any モードは [man:bsearch(3)] のように動作します。ブロックは真偽値ではなく、以下のような数値を返す必要があります。求める値の範囲がx...y
（x <= y）であるとします。また、ブロックパラメータの値を v とします。

- ブロックパラメータの値が求める値の範囲よりも小さい（v < x）場合: 正の数を返す
- ブロックパラメータの値が求める値の範囲に合致する（x <= v < y）場合: 0 を返す
- ブロックパラメータの値が求める値の範囲よりも大きい（y <= v）場合: 負の数を返す

ブロックの評価結果が 0 になるいずれかの要素を返すか、nil を返します。

```ruby title="例"
ary = [0, 100, 100, 100, 200]
p (0..4).bsearch {|i| 100 - ary[i] } # => 1, 2 or 3
p (0..4).bsearch {|i| 300 - ary[i] } # => nil
p (0..4).bsearch {|i|  50 - ary[i] } # => nil
```

上記の 2 つのモードを混在して使用しないでください(ブロックの評価結果は常に true/false、数値のいずれかを一貫して返すようにしてください)。
また、二分探索の各イテレーションで値がどのような順序で選ばれるかは未規定です。

ブロックが与えられなかった場合は、 [Enumerator](../../../class/Enumerator.md) のインスタンスを返します。

- **raise** `TypeError` -- ブロックの評価結果が true、false、nil、数値以外であった場合に発生します。

- **SEE** [Array#bsearch](../../../method/Array/i/bsearch.md)
