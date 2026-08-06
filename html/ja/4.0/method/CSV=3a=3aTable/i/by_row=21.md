# CSV::Table#by_row!

### def by_row! -> self

自身をロウモードに変更します。

再びモードが変更されるまで、いくつかのメソッドは行単位で動きます。

- **return** -- 必ず自身を返すので安全にメソッドチェーンできます。

```ruby title="例"
require "csv"

row1 = CSV::Row.new(["header1", "header2"], ["row1_1", "row1_2"])
row2 = CSV::Row.new(["header1", "header2"], ["row2_1", "row2_2"])
table = CSV::Table.new([row1, row2])
p table       # => #<CSV::Table mode:col_or_row row_count:3>
table.by_row!
p table       # => #<CSV::Table mode:row row_count:3>
p table[0] # => #<CSV::Row "header1":"row1_1" "header2":"row1_2">
p table[1] # => #<CSV::Row "header1":"row2_1" "header2":"row2_2">
```
