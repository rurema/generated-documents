# CSV#header_row?

### def header_row? -> bool

次に読み込まれる行が、ヘッダである場合に真を返します。
そうでない場合は、偽を返します。

```ruby title="例"
require "csv"

csv = CSV.new("header1,header2\nrow1_1,row1_2", headers: true)
p csv.header_row? # => true
csv.readline
p csv.header_row? # => false
```
