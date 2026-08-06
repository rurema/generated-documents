# CSV::Row#to_csv

### def to_csv -> String
### def to_s -> String

自身を CSV な文字列として返します。ヘッダは使用しません。

```ruby title="例"
require "csv"

row = CSV::Row.new(["header1", "header2"], [1, 2])
p row.to_csv                                  # => "1,2\n"
p row.to_csv( {col_sep: "|", row_sep: "<br>"} ) # => "1|2<br>"
```
