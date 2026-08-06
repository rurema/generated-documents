# Array#keep_if

### def keep_if {|item| ... } -> self
### def keep_if -> Enumerator

ブロックが真を返した要素を残し、偽を返した要素を自身から削除します。

```ruby title="例"
a = %w{ a b c d e f }
p a.keep_if {|v| v =~ /[aeiou]/} # => ["a", "e"]
p a # => ["a", "e"]
```

keep_if は常に self を返しますが、[Array#select!](../../../method/Array/i/select=21.md) は要素が 1 つ以上削除されれば self を、
1 つも削除されなければ nil を返します。

```ruby title="例"
a = %w{ a b c d e f }
p a.keep_if {|v| v =~ /[a-z]/ } # => ["a", "b", "c", "d", "e", "f"]
p a # => ["a", "b", "c", "d", "e", "f"]
```

ブロックが与えられなかった場合は、自身と keep_if から生成した
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

- **SEE** [Array#select!](../../../method/Array/i/select=21.md), [Array#delete_if](../../../method/Array/i/delete_if.md)
