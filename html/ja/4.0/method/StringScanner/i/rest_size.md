# StringScanner#rest_size

### def rest_size -> Integer

文字列の残りの長さを返します。
stringscanner.rest.size と同じです。


```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.rest_size # => 11
p s.rest.size # => 11
```
