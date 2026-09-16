# StringScanner#scan_byte

### def scan_byte -> Integer | nil

1 バイトスキャンして、その文字コードを整数で返します。スキャンポインタをその後ろに進めます。

このメソッドはマルチバイト文字を意識しません。常に 1 バイトだけをスキャンします。スキャンポインタが文字列の末尾を指しているときは `nil` を返します。

```ruby title="例"
require 'strscan'

s = StringScanner.new('ab')
p s.scan_byte    # => 97
p s.scan_byte    # => 98
p s.scan_byte    # => nil
```

```ruby title="例: マルチバイト文字を含む文字列"
require 'strscan'

s = StringScanner.new("るびい")
p s.scan_byte    # => 227
p s.scan_byte    # => 130
p s.scan_byte    # => 139
```

- **SEE** [StringScanner#getch](../../../method/StringScanner/i/getch.md), [StringScanner#get_byte](../../../method/StringScanner/i/get_byte.md), [StringScanner#peek_byte](../../../method/StringScanner/i/peek_byte.md)
