# Hash#transform_values!

### def transform_values! {|value| ... } -> self
### def transform_values!                -> Enumerator

すべての値に対してブロックを呼び出した結果でハッシュの値を変更します。
キーは変化しません。

- **return** -- transform_values! は常に self を返します。
        ブロックが与えられなかった場合は、[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

```ruby title="例"
h = { a: 1, b: 2, c: 3 }
p h.transform_values! {|v| v * v + 1 }  # => { a: 2, b: 5, c: 10 }
p h.transform_values!(&:to_s)         # => { a: "2", b: "5", c: "10" }
p h.transform_values!.with_index {|v, i| "#{v}.#{i}" }
                                      # => { a: "2.0", b: "5.1", c: "10.2" }
```

- **SEE** [Hash#transform_values](../../../method/Hash/i/transform_values.md)
- **SEE** [Hash#transform_keys](../../../method/Hash/i/transform_keys.md)
- **SEE** [Hash#transform_keys!](../../../method/Hash/i/transform_keys=21.md)
