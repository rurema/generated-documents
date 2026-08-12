# Array#deconstruct

### def deconstruct -> self
{: since="2.7.0"}

self を返します。

このメソッドは以下のようにパターンマッチ(配列パターン)で利用されます。

```ruby title="例"
case [1, [2, 3]]
in [a, [b, c]] # 裏側で #deconstruct を呼ぶ
  p [a, b, c] # => [1, 2, 3]
end
```

- **SEE** [Hash#deconstruct_keys](../../../method/Hash/i/deconstruct_keys.md), [spec/pattern_matching#matching_non_primitive_objects](../../../doc/spec=2fpattern_matching.md#matching_non_primitive_objects)
