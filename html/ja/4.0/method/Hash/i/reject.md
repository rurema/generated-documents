# Hash#reject

### def reject {|key, value| ... } -> Hash
### def reject                     -> Enumerator

self を複製して、ブロックを評価した値が真になる要素を削除したハッシュを返します。

ハッシュを返すことを除けば
[Enumerable#reject](../../../method/Enumerable/i/reject.md) とほぼ同じです。
selfを破壊的に変更したい場合はかわりに[Hash#delete_if](../../../method/Hash/i/delete_if.md)か[Hash#reject!](../../../method/Hash/i/reject=21.md)を使います。

```ruby title="例"
h = { 2 =>"8" ,4 =>"6" ,6 =>"4" ,8 =>"2" }

p h.reject{|key, value| key.to_i < value.to_i} # => {6=>"4", 8=>"2"}
```

- **SEE** [Hash#delete_if](../../../method/Hash/i/delete_if.md),[Hash#delete](../../../method/Hash/i/delete.md),[Enumerable#reject](../../../method/Enumerable/i/reject.md)
