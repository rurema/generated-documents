# CSV::Table#delete

### def delete(index_or_header) -> object

指定された行か列を削除して返します。

デフォルトのミックスモードではインデックスによるアクセスは行単位での参照であると見なします。しかし、他の方法ではヘッダによる列単位での参照であると見なします。

探索方法を変更したい場合は [CSV::Table#by_col!](../../../method/CSV=3a=3aTable/i/by_col=21.md),
[CSV::Table#by_row!](../../../method/CSV=3a=3aTable/i/by_row=21.md) を使用してください。

```ruby title="例"
require "csv"

row1 = CSV::Row.new(["header1", "header2"], ["row1_1", "row1_2"])
row2 = CSV::Row.new(["header1", "header2"], ["row2_1", "row2_2"])
table = CSV::Table.new([row1, row2])
table.delete(1)
p table.to_a       # => [["header1", "header2"], ["row1_1", "row1_2"]]
```

- **SEE** [CSV::Table#by_col!](../../../method/CSV=3a=3aTable/i/by_col=21.md), [CSV::Table#by_row!](../../../method/CSV=3a=3aTable/i/by_row=21.md), [CSV::Table#delete_if](../../../method/CSV=3a=3aTable/i/delete_if.md)
