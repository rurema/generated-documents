# Array#select!

### def select! {|item| block } -> self | nil
### def select! -> Enumerator
### def filter! {|item| block } -> self | nil
### def filter! -> Enumerator

ブロックが真を返した要素を残し、偽を返した要素を自身から削除します。
変更があった場合は self を、変更がなかった場合には nil を返します。

```ruby title="例"
a = %w{ a b c d e f }
p a.select! {|v| v =~ /[a-z]/ } # => nil
p a # => ["a", "b", "c", "d", "e", "f"]
```

ブロックが与えられなかった場合は、自身と select! から生成した
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

- **SEE** [Array#keep_if](../../../method/Array/i/keep_if.md), [Array#reject!](../../../method/Array/i/reject=21.md)
