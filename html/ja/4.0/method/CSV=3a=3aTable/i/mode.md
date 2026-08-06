# CSV::Table#mode

### def mode -> Symbol

現在のアクセスモードを返します。

```ruby title="例"
require "csv"

row = CSV::Row.new(["header1", "header2"], ["row1_1", "row1_2"])
table = CSV::Table.new([row])
p table.mode  # => :col_or_row
table.by_col!
p table.mode  # => :col
```
