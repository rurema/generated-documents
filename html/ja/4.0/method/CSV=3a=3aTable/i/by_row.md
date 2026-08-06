# CSV::Table#by_row

### def by_row -> CSV::Table

ロウモードになっている新しい [CSV::Table](../../../class/CSV=3a=3aTable.md) オブジェクトを返します。

元のテーブルモードを変更せずにメソッドチェーンできるので便利です。しかし、大きなデータセットに対しても同じだけメモリを消費するので気をつけてください。

このメソッドは複製したテーブルを返すので、破壊的なメソッドはメソッドチェーンに組込まないようにしてください。

```ruby title="例"
require "csv"

row1 = CSV::Row.new(["header1", "header2"], ["row1_1", "row1_2"])
row2 = CSV::Row.new(["header1", "header2"], ["row2_1", "row2_2"])
table = CSV::Table.new([row1, row2])
p table       # => #<CSV::Table mode:col_or_row row_count:3>
row_table = table.by_row  # => #<CSV::Table mode:row row_count:3>
p row_table[0] # => #<CSV::Row "header1":"row1_1" "header2":"row1_2">
p row_table[1] # => #<CSV::Row "header1":"row2_1" "header2":"row2_2">
```
