# Hash#delete_if

### def delete_if -> Enumerator
### def delete_if {|key, value| ... } -> self

キーと値を引数としてブロックを評価した結果が真であるような要素を self から削除します。

常に self を返します。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
h = { 2 => "8" ,4 => "6" ,6 => "4" ,8 => "2" }

p h.delete_if{|key, value| key.to_i < value.to_i } # => { 6 => "4", 8 => "2" }
p h.delete_if{|key, value| key.to_i < value.to_i } # => { 6 => "4", 8 => "2" }
```

- **SEE** [Hash#reject!](../../../method/Hash/i/reject=21.md),[Hash#reject](../../../method/Hash/i/reject.md),[Hash#delete](../../../method/Hash/i/delete.md)
- **SEE** [Hash#keep_if](../../../method/Hash/i/keep_if.md),[Hash#select!](../../../method/Hash/i/select=21.md)
