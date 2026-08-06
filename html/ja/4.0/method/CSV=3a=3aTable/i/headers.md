# CSV::Table#headers

### def headers -> Array

自身のヘッダ行を返します。

テーブルが空である場合は空の配列を返します。

```ruby title="例"
require "csv"

row = CSV::Row.new(["header1", "header2"], ["row1_1", "row1_2"])
table = CSV::Table.new([row])
p table.headers # => ["header1", "header2"]
```
