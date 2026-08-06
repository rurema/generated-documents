# Array#to_h

### def to_h -> Hash
### def to_h { block } -> Hash

self を [key, value] のペアの配列として解析した結果を [Hash](../../../class/Hash.md) にして返します。

```ruby title="例"
p [[:foo, :bar], [1, 2]].to_h # => {:foo => :bar, 1 => 2}
```

ブロックを指定すると配列の各要素でブロックを呼び出し、その結果をペアとして使います。

```ruby title="ブロック付きの例"
p ["foo", "bar"].to_h {|s| [s.ord, s]} # => {102=>"foo", 98=>"bar"}
```
