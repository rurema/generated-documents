# Array#sum

### def sum(init=0)                    -> object
### def sum(init=0) {|e| expr }        -> object

要素の合計を返します。例えば [e1, e2, e3].sum は init + e1 + e2 + e3 を返します。

ブロックが与えられた場合、加算する前に各要素にブロックが適用されます。

配列が空の場合、initを返します。

```ruby title="例"
p [].sum                           #=> 0
p [].sum(0.0)                      #=> 0.0
p [1, 2, 3].sum                    #=> 6
p [3, 5.5].sum                     #=> 8.5
p [2.5, 3.0].sum(0.0) {|e| e * e } #=> 15.25
[Object.new].sum                   # ~> TypeError
```

配列の平均値は以下のように求められます。

```ruby title="例"
mean = ary.sum(0.0) / ary.length
```

init 引数を明示的に指名すると数値以外のオブジェクトにも使えます。

```ruby title="例"
p ["a", "b", "c"].sum("")          #=> "abc"
p [[1], [[2]], [3]].sum([])        #=> [1, [2], 3]
```

しかし、文字列の配列や配列の配列の場合 [Array#join](../../../method/Array/i/join.md) や [Array#flatten](../../../method/Array/i/flatten.md) の方が [Array#sum](../../../method/Array/i/sum.md) よりも高速です。

```ruby title="例"
p ["a", "b", "c"].join             #=> "abc"
p [[1], [[2]], [3]].flatten(1)     #=> [1, [2], 3]
```

"+" メソッドが再定義されている場合、[Array#sum](../../../method/Array/i/sum.md) は再定義を無視することがあります(例えば [Integer#+](../../../method/Integer/i/=2b.md))。

- **SEE** [Enumerable#sum](../../../method/Enumerable/i/sum.md)
