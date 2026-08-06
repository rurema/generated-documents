# CSV#row_sep

### def row_sep -> String

行区切り文字列として使用する文字列を返します。

```ruby title="例"
require "csv"

csv = CSV.new("header1,header2|row1_1,row1_2", row_sep: "|")
p csv.row_sep # => "|"
p csv.read  # => [["header1", "header2"], ["row1_1", "row1_2"]]
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
