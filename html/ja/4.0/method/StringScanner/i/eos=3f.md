# StringScanner#eos?

### def eos? -> bool

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
