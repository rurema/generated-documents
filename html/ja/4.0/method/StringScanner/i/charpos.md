# StringScanner#charpos

### def charpos -> Integer

現在のスキャンポインタのインデックスを文字単位で返します。

```ruby title="例"
require 'strscan'

s = StringScanner.new("abcädeföghi")
p s.charpos         # => 0
p s.scan_until(/ä/) # => "abcä"
p s.pos             # => 5
p s.charpos         # => 4
```

- **SEE** [StringScanner#pos](../../../method/StringScanner/i/pos.md)
