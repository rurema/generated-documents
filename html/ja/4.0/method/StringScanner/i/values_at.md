# StringScanner#values_at

### def values_at(*specifiers) -> [String | nil] | nil
{: since="2.5.0"}

直前のマッチが成功していれば、各 `specifier` に対応する部分文字列を集めた配列を返します。マッチが失敗していれば `nil` を返します。

各 `specifier` に対応する値は [StringScanner#\[\]](../../../method/StringScanner/i/=5b=5d.md) と同じです。

- **param** `specifiers` -- 取得したいキャプチャを指定します。整数、シンボル、文字列を指定できます。

```ruby title="例"
require 'strscan'

s = StringScanner.new('Fri Dec 12 1975 14:39')
s.scan(/(\w+) (\w+) (\d+) /)
p s.values_at(0, 1, 2, 3)    # => ["Fri Dec 12 ", "Fri", "Dec", "12"]
p s.values_at(0, -1)         # => ["Fri Dec 12 ", "12"]
```

- **SEE** [StringScanner#\[\]](../../../method/StringScanner/i/=5b=5d.md)
