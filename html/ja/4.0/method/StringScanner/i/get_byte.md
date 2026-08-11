# StringScanner#get_byte

### def get_byte -> String | nil
### def getbyte -> String | nil

1 バイトスキャンして文字列で返します。
スキャンポインタをその後ろに進めます。
スキャンポインタが文字列の末尾を指すなら nil を返します。

[StringScanner#getbyte](../../../method/StringScanner/i/getbyte.md) は将来のバージョンで削除される予定です。
代わりに [StringScanner#get_byte](../../../method/StringScanner/i/get_byte.md) を使ってください。

```ruby title="例"
require 'strscan'

utf8 = "\u{308B 3073 3044}"
s = StringScanner.new(utf8.encode("EUC-JP"))
p s.get_byte       # => "\xA4"
p s.get_byte       # => "\xEB"
p s.get_byte       # => "\xA4"
p s.get_byte       # => "\xD3"
p s.get_byte       # => "\xA4"
p s.get_byte       # => "\xA4"
p s.get_byte       # => nil
```
