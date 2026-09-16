# StringScanner#peek_byte

### def peek_byte -> Integer | nil

スキャンポインタの位置にある 1 バイトを読み取り、その文字コードを整数で返します。スキャンポインタは進めません。

マルチバイト文字であっても常に 1 バイトだけを見ます。スキャンポインタが文字列の末尾を指しているときは `nil` を返します。

```ruby title="例"
require 'strscan'

s = StringScanner.new('ab')
p s.peek_byte    # => 97
p s.getch        # => "a"
p s.peek_byte    # => 98
p s.getch        # => "b"
p s.peek_byte    # => nil
```

- **SEE** [StringScanner#peek](../../../method/StringScanner/i/peek.md), [StringScanner#getch](../../../method/StringScanner/i/getch.md), [StringScanner#scan_byte](../../../method/StringScanner/i/scan_byte.md)
