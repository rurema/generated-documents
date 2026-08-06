# CSV#headers

### def headers -> Array | true | nil

nil を返した場合は、ヘッダは使用されません。
真を返した場合は、ヘッダを使用するが、まだ読み込まれていません。
配列を返した場合は、ヘッダは既に読み込まれています。

```ruby title="例"
require "csv"

csv = CSV.new("header1,header2\nrow1_1,row1_2")
p csv.headers # => nil
csv = CSV.new("header1,header2\nrow1_1,row1_2", headers: true)
p csv.headers # => true
csv.read
p csv.headers # =>["header1", "header2"]
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
