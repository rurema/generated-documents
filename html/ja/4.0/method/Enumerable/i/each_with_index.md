# Enumerable#each_with_index

### def each_with_index(*args)                      -> Enumerator
### def each_with_index(*args) {|item, index| ... } -> self

要素とそのインデックスをブロックに渡して繰り返します。

ブロックを省略した場合は、要素とそのインデックスを繰り返すような
[Enumerator](../../../class/Enumerator.md) を返します。

[Enumerator#with_index](../../../method/Enumerator/i/with_index.md) は offset 引数を受け取りますが、
each_with_index は受け取りません (引数はイテレータメソッドにそのまま渡されます)。

- **param** `args` -- イテレータメソッド (each など) にそのまま渡されます。

```ruby title="例"
[5, 10, 15].each_with_index do |n, idx|
  p [n, idx]
end
# => [5, 0]
#    [10, 1]
#    [15, 2]
```

```ruby title="引数ありの例"
require 'stringio'
StringIO.new("foo|bar|baz").each_with_index("|") do |s, i|
  p [s, i]
end
# => ["foo|", 0]
#    ["bar|", 1]
#    ["baz", 2]
```

- **SEE** [Enumerator#with_index](../../../method/Enumerator/i/with_index.md)
