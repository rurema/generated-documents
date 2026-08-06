# String#unpack1

### def unpack1(format) -> object

formatにしたがって文字列をデコードし、展開された1つ目の値を返します。
unpackは配列を返しますがunpack1は配列の1つ目の要素のみを返します。

未知のテンプレート文字を指定すると [ArgumentError](../../../class/ArgumentError.md) が発生します。

```ruby title="例"
p "ABC".unpack1("C*") # => 65
p "ABC".unpack("C*")  # => [65, 66, 67]
```

- **SEE** [String#unpack](../../../method/String/i/unpack.md), [Array#pack](../../../method/Array/i/pack.md)
