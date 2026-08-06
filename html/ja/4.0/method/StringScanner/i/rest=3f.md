# StringScanner#rest?

### def rest? -> bool

文字列が残っているならば trueを、残っていないならば false を返します。

[StringScanner#eos?](../../../method/StringScanner/i/eos=3f.md) と逆の結果を返します。

[StringScanner#rest?](../../../method/StringScanner/i/rest=3f.md) は将来のバージョンで削除される予定です。
代わりに [StringScanner#eos?](../../../method/StringScanner/i/eos=3f.md) を使ってください。

```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.eos?        # => false
p s.rest?       # => true
s.scan(/\w+/)
s.scan(/\s+/)
s.scan(/\w+/)
p s.eos?        # => true
p s.rest?       # => false
```
