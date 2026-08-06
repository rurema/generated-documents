# CSV#return_headers?

### def return_headers? -> bool

ヘッダを返す場合は、真を返します。
そうでない場合は、偽を返します。

```ruby title="例"
require "csv"

csv = CSV.new("header1,header2\nrow1_1,row1_2", headers: true, return_headers: false)
p csv.return_headers? # => false
p csv.shift # => #<CSV::Row "header1":"row1_1" "header2":"row1_2">

csv = CSV.new("header1,header2\nrow1_1,row1_2", headers: true, return_headers: true)
p csv.return_headers? # => true
p csv.shift # => #<CSV::Row "header1":"header1" "header2":"header2">
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
