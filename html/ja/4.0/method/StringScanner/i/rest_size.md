# StringScanner#rest_size

### def rest_size -> Integer
### def restsize -> Integer

文字列の残りの長さを返します。
stringscanner.rest.size と同じです。

[StringScanner#restsize](../../../method/StringScanner/i/restsize.md) は将来のバージョンで削除される予定です。
代わりに[StringScanner#rest_size](../../../method/StringScanner/i/rest_size.md) を使ってください。

```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.rest_size # => 11
p s.rest.size # => 11
```
