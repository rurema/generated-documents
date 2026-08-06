# StringScanner#eos?

### def eos? -> bool
### def empty? -> bool

スキャンポインタが文字列の末尾を指しているなら true を、末尾以外を指しているなら false を返します。

```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.eos?      # => false
s.scan(/\w+/)
s.scan(/\s+/)
s.scan(/\w+/)
p s.eos?      # => true
```

[StringScanner#empty?](../../../method/StringScanner/i/empty=3f.md) は将来のバージョンで削除される予定です。
代わりに [StringScanner#eos?](../../../method/StringScanner/i/eos=3f.md) を使ってください。
