# String#upcase!

### def upcase!(*options) -> self | nil

全ての小文字を対応する大文字に破壊的に置き換えます。
どの文字がどう置き換えられるかは、オプションの有無や文字列のエンコーディングに依存します。

- **param** `options` -- オプションの詳細は [String#downcase](../../../method/String/i/downcase.md) を参照してください。

```ruby title="例"
buf = "stRIng? STring."
buf.upcase!
p buf   # => "STRING? STRING."
```

- **SEE** [String#upcase](../../../method/String/i/upcase.md), [String#downcase!](../../../method/String/i/downcase=21.md),
     [String#swapcase!](../../../method/String/i/swapcase=21.md), [String#capitalize!](../../../method/String/i/capitalize=21.md)
