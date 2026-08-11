# Array#repeated_combination

### def repeated_combination(n) { |c| ... } -> self
### def repeated_combination(n)             -> Enumerator

サイズ n の重複組み合わせをすべて生成し、それを引数としてブロックを実行します。

得られる組み合わせの順序は保証されません。ブロックなしで呼び出されると、組み合わせを生成する Enumerator オブジェクトを返します。

- **param** `n` -- 生成される配列のサイズを整数で指定します。
         整数以外のオブジェクトを指定した場合は to_int メソッドによる暗黙の型変換を試みます。

- **raise** `TypeError` -- 引数に整数以外の(暗黙の型変換が行えない)オブジェクトを指定した場合に発生します。

```ruby title="例"
a = [1, 2, 3]
p a.repeated_combination(1).to_a  # => [[1], [2], [3]]
p a.repeated_combination(2).to_a  # => [[1,1],[1,2],[1,3],[2,2],[2,3],[3,3]]
p a.repeated_combination(3).to_a  # => [[1,1,1],[1,1,2],[1,1,3],[1,2,2],[1,2,3],
                                #    [1,3,3],[2,2,2],[2,2,3],[2,3,3],[3,3,3]]
p a.repeated_combination(4).to_a  # => [[1,1,1,1],[1,1,1,2],[1,1,1,3],[1,1,2,2],[1,1,2,3],
                                #    [1,1,3,3],[1,2,2,2],[1,2,2,3],[1,2,3,3],[1,3,3,3],
                                #    [2,2,2,2],[2,2,2,3],[2,2,3,3],[2,3,3,3],[3,3,3,3]]
p a.repeated_combination(0).to_a  # => [[]] # one combination of length 0
```

ブロックが与えられた場合、作成した配列の各要素を引数としてブロックを実行して self を返します。

```ruby title="例"
a = [1, 2, 3]
result = []
p a.repeated_combination(3) {|e| result << e} # => [1,2,3]
p result  # => [[1,1,1],[1,1,2],[1,1,3],[1,2,2],[1,2,3],
        #    [1,3,3],[2,2,2],[2,2,3],[2,3,3],[3,3,3]]
```

- **SEE** [Array#repeated_permutation](../../../method/Array/i/repeated_permutation.md), [Array#combination](../../../method/Array/i/combination.md)
