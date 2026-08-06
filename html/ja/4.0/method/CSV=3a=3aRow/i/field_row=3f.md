# CSV::Row#field_row?

### def field_row? -> bool

フィールド行であれば真を返します。そうでなければ偽を返します。

```ruby title="例"
require "csv"

header_row = CSV::Row.new(["header1", "header2"], [], true)
row = CSV::Row.new(["header1", "header2"], [1, 2])
p header_row.field_row? # => false
p row.field_row?      # => true
```
