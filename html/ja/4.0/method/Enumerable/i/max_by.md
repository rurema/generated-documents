# Enumerable#max_by

### def max_by                  -> Enumerator
### def max_by(n)               -> Enumerator
### def max_by {|item| ... }    -> object | nil
### def max_by(n) {|item| ... } -> Array

各要素を順番にブロックに渡して実行し、その評価結果を <=> で比較して、最大であった値に対応する元の要素、もしくは最大の n 要素が降順で入った配列を返します。

引数を指定しない形式では要素が存在しなければ nil を返します。
引数を指定する形式では、空の配列を返します。
該当する要素が複数存在する場合、どの要素を返すかは不定です。

[Enumerable#max](../../../method/Enumerable/i/max.md) と [Enumerable#max_by](../../../method/Enumerable/i/max_by.md) の違いは [Enumerable#sort](../../../method/Enumerable/i/sort.md) と [Enumerable#sort_by](../../../method/Enumerable/i/sort_by.md) の違いと同じです。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

- **param** `n` -- 取得する要素数。

```ruby title="例"
a = %w(albatross dog horse)
p a.max_by                  # => #<Enumerator: ["albatross", "dog", "horse"]:max_by>
p a.max_by { |x| x.length } # => "albatross"
```

```ruby title="例"
a = %w[albatross dog horse]
p a.max_by(2)               # => #<Enumerator: ["albatross", "dog", "horse"]:max_by(2)>
p a.max_by(2) {|x| x.length } # => ["albatross", "horse"]
```

```ruby title="例: enum.max_by（n）は、重み付きランダムサンプリングを実装するために使用できます。次の実装例は、Enumerable#wsampleを使用します。"
module Enumerable
  # weighted random sampling.
  #
  # Pavlos S. Efraimidis, Paul G. Spirakis
  # Weighted random sampling with a reservoir
  # Information Processing Letters
  # Volume 97, Issue 5 (16 March 2006)
  def wsample(n)
    self.max_by(n) {|v| rand ** (1.0/yield(v)) }
  end
end
e = (-20..20).to_a*10000
a = e.wsample(20000) {|x|
  Math.exp(-(x/5.0)**2) # normal distribution
}
# a is 20000 samples from e.
p a.length #=> 20000
h = a.group_by {|x| x }
-10.upto(10) {|x| puts "*" * (h[x].length/30.0).to_i if h[x] }
#=> *
#   ***
#   ******
#   ***********
#   ******************
#   *****************************
#   *****************************************
#   ****************************************************
#   ***************************************************************
#   ********************************************************************
#   ***********************************************************************
#   ***********************************************************************
#   **************************************************************
#   ****************************************************
#   ***************************************
#   ***************************
#   ******************
#   ***********
#   *******
#   ***
#   *
```

- **SEE** [Enumerable#sort_by](../../../method/Enumerable/i/sort_by.md)
