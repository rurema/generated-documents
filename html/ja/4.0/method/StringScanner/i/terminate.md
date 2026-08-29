# StringScanner#terminate

### def terminate -> self

スキャンポインタを文字列末尾後まで進め、マッチ記録を捨てます。

- **return** -- self を返します。

pos = self.string.size と同じ動作です。

```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.scan(/\w+/) # => "test"
p s.matched   # => "test"
p s.pos       # => 4
p s[0]        # => "test"
s.terminate
p s.matched   # => nil
p s[0]        # => nil
p s.pos       # => 11
```
