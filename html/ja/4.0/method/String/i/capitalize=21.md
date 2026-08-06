# String#capitalize!

### def capitalize!(*options) -> self | nil

文字列先頭の文字を大文字に、残りを小文字に破壊的に変更します。

- **param** `options` -- オプションの詳細は [String#downcase](../../../method/String/i/downcase.md) を参照してください。

- **return** -- capitalize! は self を変更して返しますが、
        変更が起こらなかった場合は nil を返します。

```ruby title="例"
str = "foobar"
str.capitalize!
p str   # => "Foobar"

str = "fooBAR"
str.capitalize!
p str   # => "Foobar"
```

- **SEE** [String#capitalize](../../../method/String/i/capitalize.md), [String#upcase!](../../../method/String/i/upcase=21.md),
     [String#downcase!](../../../method/String/i/downcase=21.md), [String#swapcase!](../../../method/String/i/swapcase=21.md)
