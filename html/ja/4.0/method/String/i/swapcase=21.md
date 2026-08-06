# String#swapcase!

### def swapcase!(*options) -> self | nil

大文字を小文字に、小文字を大文字に破壊的に変更します。

- **param** `options` -- オプションの詳細は [String#downcase](../../../method/String/i/downcase.md) を参照してください。

swapcase! は self を変更して返しますが、置換が起こらなかった場合は nil を返します。

このメソッドはマルチバイト文字を認識しません。

```ruby title="例"
str = "ABCxyz"
str.swapcase!
p str   # => "abcXYZ"
```

- **SEE** [String#swapcase](../../../method/String/i/swapcase.md), [String#upcase!](../../../method/String/i/upcase=21.md), [String#downcase!](../../../method/String/i/downcase=21.md), [String#capitalize!](../../../method/String/i/capitalize=21.md)
