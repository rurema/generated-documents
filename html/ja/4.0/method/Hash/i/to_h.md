# Hash#to_h

### def to_h -> self | Hash
### def to_h {|key, value| block } -> Hash

self を返します。[Hash](../../../class/Hash.md) クラスのサブクラスから呼び出した場合は
self を [Hash](../../../class/Hash.md) オブジェクトに変換します。

```ruby title="例"
hash = {}
p hash.to_h      # => {}
p hash.to_h == hash # => true

class MyHash < Hash;end
my_hash = MyHash.new
p my_hash.to_h        # => {}
p my_hash.class       # => MyHash
p my_hash.to_h.class  # => Hash
```

ブロックを指定すると各ペアでブロックを呼び出し、その結果をペアとして使います。

```ruby title="ブロック付きの例"
hash = { "a" => 97, "b" => 98 }
p hash.to_h {|key, value| [key.upcase, value-32] } # => {"A"=>65, "B"=>66}
```

- **SEE** [Enumerable#map](../../../method/Enumerable/i/map.md)
