# CSV::Table#values_at

### def values_at(indices_or_headers) -> Array

デフォルトのミックスモードでは、インデックスのリストを与えると行単位の参照を行い、行の配列を返します。他の方法は列単位の参照と見なします。行単位の参照では、返り値は行ごとの配列を要素に持つ配列です。

探索方法を変更したい場合は [CSV::Table#by_col!](../../../method/CSV=3a=3aTable/i/by_col=21.md),
[CSV::Table#by_row!](../../../method/CSV=3a=3aTable/i/by_row=21.md) を使用してください。

アクセスモードを混在させることはできません。

```ruby title="例 ロウモード"
require "csv"

row1 = CSV::Row.new(["header1", "header2"], ["row1_1", "row1_2"])
row2 = CSV::Row.new(["header1", "header2"], ["row2_1", "row2_2"])
table = CSV::Table.new([row1, row2])
p table.values_at(1) # => [#<CSV::Row "header1":"row2_1" "header2":"row2_2">]
```

```ruby title="例 カラムモード"
require "csv"

row1 = CSV::Row.new(["header1", "header2"], ["row1_1", "row1_2"])
row2 = CSV::Row.new(["header1", "header2"], ["row2_1", "row2_2"])
table = CSV::Table.new([row1, row2])
table.by_col!
p table.values_at(1) # => [["row1_2"], ["row2_2"]]
```

- **SEE** [CSV::Table#by_col!](../../../method/CSV=3a=3aTable/i/by_col=21.md), [CSV::Table#by_row!](../../../method/CSV=3a=3aTable/i/by_row=21.md)
