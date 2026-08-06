# String#unicode_normalized?

### def unicode_normalized?(form = :nfc) -> bool

self が引数 form で指定された正規化形式で Unicode 正規化された文字列かどうかを返します。

- **param** `form` -- 正規化形式を :nfc、:nfd、:nfkc、:nfkd のいずれかで指定しま
            す。省略した場合は :nfc になります。

- **raise** `Encoding::CompatibilityError` -- self が Unicode 文字列ではない場合
                                    に発生します。

```ruby title="例"
p "a\u0300".unicode_normalized?      # => false
p "a\u0300".unicode_normalized?(:nfd)  # => true
p "\u00E0".unicode_normalized?       # => true
p "\u00E0".unicode_normalized?(:nfd) # => false
"\xE0".force_encoding('ISO-8859-1').unicode_normalized?
                                     # ~> Encoding::CompatibilityError: Unicode Normalization not appropriate for ISO-8859-1
```

- **SEE** [String#unicode_normalize](../../../method/String/i/unicode_normalize.md), [String#unicode_normalize!](../../../method/String/i/unicode_normalize=21.md)
