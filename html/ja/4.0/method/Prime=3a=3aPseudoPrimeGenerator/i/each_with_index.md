# Prime::PseudoPrimeGenerator#each_with_index

### def with_index{|prime, index| ... }      -> self
### def each_with_index{|prime, index| ... } -> self
### def with_index      -> Enumerator
### def each_with_index -> Enumerator

与えられたブロックに対して、素数を0起点の連番を渡して評価します。

- **return** -- ブロックを与えられた場合は self を返します。 ブロックを与えられなかった場合は Enumerator を返します。

```ruby title="例"
require 'prime'
Prime::EratosthenesGenerator.new.each_with_index do |prime, index|
  break if prime > 10
  p [prime, index]
end
# => [2, 0]
#    [3, 1]
#    [5, 2]
#    [7, 3]
```

- **SEE** [Enumerator#with_index](../../../method/Enumerator/i/with_index.md)
