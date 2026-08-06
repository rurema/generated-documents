# String#upcase

### def upcase(*options) -> String

全ての小文字を対応する大文字に置き換えた文字列を返します。
どの文字がどう置き換えられるかは、オプションの有無や文字列のエンコーディングに依存します。

- **param** `options` -- オプションの詳細は [String#downcase](../../../method/String/i/downcase.md) を参照してください。

```ruby title="例"
p "stRIng? STring.".upcase   # => "STRING? STRING."
```

- **SEE** [String#upcase!](../../../method/String/i/upcase=21.md), [String#downcase](../../../method/String/i/downcase.md),
     [String#swapcase](../../../method/String/i/swapcase.md), [String#capitalize](../../../method/String/i/capitalize.md)
