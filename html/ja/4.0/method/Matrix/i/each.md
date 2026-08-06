# Matrix#each

### def each(which = :all) {|e| ... } -> self
### def each(which = :all) -> Enumerator

行列の各要素を引数としてブロックを呼び出します。

0行目、1行目、…という順番で処理します。
which に以下の [Symbol](../../../class/Symbol.md) を指定することで引数として使われる要素を限定できます。
  - :all - すべての要素(デフォルト)
  - :diagonal - 対角要素
  - :off_diagonal 対角要素以外
  - :lower 対角成分とそれより下側の部分
  - :upper対角成分とそれより上側の部分
  - :strict_lower 対角成分の下側
  - :strict_upper 対角成分の上側

ブロックを省略した場合、 [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
require 'matrix'
Matrix[ [1,2], [3,4] ].each { |e| puts e }
# => prints the numbers 1 to 4
p Matrix[ [1,2], [3,4] ].each(:strict_lower).to_a # => [3]
```

- **param** `which` -- どの要素に対してブロックを呼び出すのかを [Symbol](../../../class/Symbol.md) で指定します
- **SEE** [Matrix#each_with_index](../../../method/Matrix/i/each_with_index.md), [Matrix#map](../../../method/Matrix/i/map.md)
