# Hash#each_key

### def each_key {|key| ... } -> self
### def each_key -> Enumerator

ハッシュのキーを引数としてブロックを評価します。

反復の際の評価順序はキーが追加された順です。
ブロック付きの場合selfを、無しで呼ばれた場合[Enumerator](../../../class/Enumerator.md)を返します。

```ruby title="例"
{:a=>1, :b=>2}.each_key {|k| p k}
#=> :a
#   :b

p({:a=>1, :b=>2}.each_key)  # => #<Enumerator: {:a=>1, :b=>2}:each_key>
```

- **SEE** [Hash#each_pair](../../../method/Hash/i/each_pair.md),[Hash#each_value](../../../method/Hash/i/each_value.md)
