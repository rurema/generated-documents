# Hash#transform_values

### def transform_values {|value| ... } -> Hash
### def transform_values                -> Enumerator

すべての値に対してブロックを呼び出した結果で置き換えたハッシュを返します。
キーは変化しません。

- **return** -- 置き換えたハッシュを返します。
        ブロックが与えられなかった場合は、[Enumerator](../../../class/Enumerator.md) オブジェクトを
        返します。

```ruby title="例"
h = { a: 1, b: 2, c: 3 }
p h.transform_values {|v| v * v + 1 }  #=> { a: 2, b: 5, c: 10 }
p h.transform_values(&:to_s)         #=> { a: "1", b: "2", c: "3" }
p h.transform_values.with_index {|v, i| "#{v}.#{i}" }
                                     #=> { a: "1.0", b: "2.1", c: "3.2" }
```

- **SEE** [Hash#transform_values!](../../../method/Hash/i/transform_values=21.md)
- **SEE** [Hash#transform_keys](../../../method/Hash/i/transform_keys.md)
- **SEE** [Hash#transform_keys!](../../../method/Hash/i/transform_keys=21.md)
