# Matrix#each_with_index

### def each_with_index(which = :all) {|e, row, col| ... }  -> self
### def each_with_index(which = :all) -> Enumerator

行列の各要素をその位置とともに引数としてブロックを呼び出します。

which で処理する要素の範囲を指定できます。
[Matrix#each](../../../method/Matrix/i/each.md) と同じなのでそちらを参照してください。

ブロックを省略した場合、 [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
require 'matrix'
Matrix[ [1,2], [3,4] ].each_with_index do |e, row, col|
  puts "#{e} at #{row}, #{col}"
end
  # => 1 at 0, 0
  # => 2 at 0, 1
  # => 3 at 1, 0
  # => 4 at 1, 1
```

- **param** `which` -- どの要素に対してブロックを呼び出すのかを [Symbol](../../../class/Symbol.md) で指定します
- **SEE** [Matrix#each](../../../method/Matrix/i/each.md)
