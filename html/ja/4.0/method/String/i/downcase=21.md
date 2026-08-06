# String#downcase!

### def downcase!(*options) -> self | nil

全ての大文字を対応する小文字に破壊的に置き換えます。
どの文字がどう置き換えられるかは、オプションの有無や文字列のエンコーディングに依存します。

- **param** `options` -- オプションの詳細は [String#downcase](../../../method/String/i/downcase.md) を参照してください。
- **return** -- self を変更して返します。変更が無かった場合は nil を返します。

```ruby title="例"
str = "STRing?"
str.downcase!
p str   # => "string?"
```

- **SEE** [String#downcase](../../../method/String/i/downcase.md), [String#upcase!](../../../method/String/i/upcase=21.md), [String#swapcase!](../../../method/String/i/swapcase=21.md), [String#capitalize!](../../../method/String/i/capitalize=21.md)
