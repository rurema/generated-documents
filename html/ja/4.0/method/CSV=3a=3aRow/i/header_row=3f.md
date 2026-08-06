# CSV::Row#header_row?

### def header_row? -> bool

ヘッダ行であれば真を返します。そうでなければ偽を返します。

```ruby title="例"
require "csv"

header_row = CSV::Row.new(["header1", "header2"], [], true)
row = CSV::Row.new(["header1", "header2"], [1, 2])
p header_row.header_row? # => true
p row.header_row?      # => false
```
