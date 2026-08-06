# CSV::Row#headers

### def headers -> Array

この行のヘッダのリストを返します。

```ruby title="例"
require "csv"

row = CSV::Row.new(["header1", "header2"], [1, 2])
p row.headers # => ["header1", "header2"]
```
