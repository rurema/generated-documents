# String#capitalize

### def capitalize(*options) -> String

文字列先頭の文字を大文字に、残りを小文字に変更した文字列を返します。

- **param** `options` -- オプションの詳細は [String#downcase](../../../method/String/i/downcase.md) を参照してください。

```ruby title="例"
p "foobar--".capitalize   # => "Foobar--"
p "fooBAR--".capitalize   # => "Foobar--"
p "FOOBAR--".capitalize   # => "Foobar--"
```

- **SEE** [String#capitalize!](../../../method/String/i/capitalize=21.md), [String#upcase](../../../method/String/i/upcase.md),
     [String#downcase](../../../method/String/i/downcase.md), [String#swapcase](../../../method/String/i/swapcase.md)
