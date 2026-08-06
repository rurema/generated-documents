# Hash#each_value

### def each_value {|value| ... } -> self
### def each_value -> Enumerator

ハッシュの値を引数としてブロックを評価します。

反復の際の評価順序はキーが追加された順です。
ブロック付きの場合selfを、無しで呼ばれた場合 [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
{:a=>1, :b=>2}.each_value {|v| p v}
#=> 1
#   2

p({:a=>1, :b=>2}.each_value)  # => #<Enumerator: {:a=>1, :b=>2}:each_value>
```

- **SEE** [Hash#each_pair](../../../method/Hash/i/each_pair.md),[Hash#each_key](../../../method/Hash/i/each_key.md)
