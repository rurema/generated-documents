# Hash#reject!

### def reject!   -> Enumerator
### def reject! {|key, value| ... } -> self|nil

キーと値を引数としてブロックを評価した結果が真であるような要素を self から削除します。

要素を削除しなかった場合には nil を返し、そうでなければ self を返します。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
h = { 2 => "8" ,4 => "6" ,6 => "4" ,8 => "2" }

p h.reject!{|key, value| key.to_i < value.to_i }   # => { 6 => "4", 8 => "2" }
p h                                                # => { 6 => "4", 8 => "2" }
p h.reject!{|key, value| key.to_i < value.to_i }   # => nil
```

- **SEE** [Hash#delete_if](../../../method/Hash/i/delete_if.md),[Hash#reject](../../../method/Hash/i/reject.md),[Hash#delete](../../../method/Hash/i/delete.md)
- **SEE** [Hash#keep_if](../../../method/Hash/i/keep_if.md),[Hash#select!](../../../method/Hash/i/select=21.md)
