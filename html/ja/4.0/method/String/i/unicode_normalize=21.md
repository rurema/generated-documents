# String#unicode_normalize!

### def unicode_normalize!(form = :nfc) -> self

self を NFC、NFD、NFKC、NFKD のいずれかの正規化形式で Unicode 正規化した文字列に置き換えます。

(gsub!などと異なり)変換が行なわれなくても self を返します。

- **param** `form` -- 正規化形式を :nfc、:nfd、:nfkc、:nfkd のいずれかで指定します。省略した場合は :nfc になります。

- **raise** `Encoding::CompatibilityError` -- self が Unicode 文字列ではない場合に発生します。

```ruby title="例"
text = "a\u0300"
text.unicode_normalize!(:nfc)
p text == "\u00E0"            # => true
text.unicode_normalize!(:nfd)
p text == "a\u0300"           # => true
```

- **SEE** [String#unicode_normalize](../../../method/String/i/unicode_normalize.md), [String#unicode_normalized?](../../../method/String/i/unicode_normalized=3f.md)
