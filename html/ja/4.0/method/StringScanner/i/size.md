# StringScanner#size

### def size -> Integer | nil
{: since="2.5.0"}

直前のマッチが成功していれば、そのキャプチャの数(マッチ全体を含む)を返します。マッチが失敗していれば `nil` を返します。

```ruby title="例"
require 'strscan'

s = StringScanner.new('Fri Dec 12 1975 14:39')
p s.size                          # => nil
p s.scan(/(\w+) (\w+) (\d+) /)    # => "Fri Dec 12 "
p s.size                          # => 4
```

- **SEE** [StringScanner#captures](../../../method/StringScanner/i/captures.md), [StringScanner#values_at](../../../method/StringScanner/i/values_at.md)
