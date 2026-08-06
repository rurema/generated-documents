# Enumerable#min_by

### def min_by                  -> Enumerator
### def min_by(n)               -> Enumerator
### def min_by {|item| ... }    -> object | nil
### def min_by(n) {|item| ... } -> Array

各要素を順番にブロックに渡して評価し、その評価結果を <=> で比較して、最小であった値に対応する元の要素、もしくは最小の n 要素が昇順で入った配列を返します。

引数を指定しない形式では要素が存在しなければ nil を返します。
引数を指定する形式では、空の配列を返します。

該当する要素が複数存在する場合、どの要素を返すかは不定です。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

[Enumerable#min](../../../method/Enumerable/i/min.md) と [Enumerable#min_by](../../../method/Enumerable/i/min_by.md) の違いは [Enumerable#sort](../../../method/Enumerable/i/sort.md) と [Enumerable#sort_by](../../../method/Enumerable/i/sort_by.md) の違いと同じです。

- **param** `n` -- 取得する要素数。

```ruby title="例"
a = %w(albatross dog horse)
p a.min_by                  # => #<Enumerator: ["albatross", "dog", "horse"]:min_by>
p a.min_by { |x| x.length } # => "dog"
p a.min_by(2)               # => #<Enumerator: ["albatross", "dog", "horse"]:min_by(2)>
p a.min_by(2) {|x| x.length } # => ["dog", "horse"]
```

- **SEE** [Enumerable#sort_by](../../../method/Enumerable/i/sort_by.md)
