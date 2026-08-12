# Hash#deconstruct_keys

### def deconstruct_keys(keys) -> self
{: since="2.7.0"}

self を返します。引数 keys は無視されます(キーによる絞り込みは行いません)。

このメソッドは以下のようにパターンマッチ(ハッシュパターン)で利用されます。

```ruby title="例"
h = {name: "Alice", age: 29}

case h
in {name: String => name} # 裏側で #deconstruct_keys を呼ぶ
  puts "Hello, #{name}"
end
# "Hello, Alice" が表示される
```

- **param** `keys` -- パターンに現れるキーの配列が渡されます(全体をマッチさせるパターンでは nil)。このメソッドは引数を使用しません。

- **SEE** [Array#deconstruct](../../../method/Array/i/deconstruct.md), [spec/pattern_matching#matching_non_primitive_objects](../../../doc/spec=2fpattern_matching.md#matching_non_primitive_objects)
