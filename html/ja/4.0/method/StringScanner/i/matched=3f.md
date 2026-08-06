# StringScanner#matched?

### def matched? -> bool

前回のマッチが成功していたら true を、失敗していたら false を返します。

```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.matched?  # => false
p s.scan(/\w+/) # => "test"
p s.matched?  # => true
p s.scan(/\w+/) # => nil
p s.matched?  # => false
p s.scan(/\s+/) # => " "
p s.matched?  # => true
```
