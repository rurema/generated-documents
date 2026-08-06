# CSV::Row#delete_if

### def delete_if{|header, field| ... } -> self

与えられたブロックにヘッダとフィールドのペアを渡して評価します。
評価した結果が真である場合に、その組を自身から削除します。

- **return** -- メソッドチェーンのために自身を返します。

```ruby title="例"
require "csv"

row = CSV::Row.new(["header1", "header2", "header3", "header4"], ["valid1", "valid2", "invalid", "valid4"])

p row # => #<CSV::Row "header1":"valid1" "header2":"valid2" "header3":"invalid" "header4":"valid4">
row.delete_if { |header, field| field == "invalid" }
p row # => #<CSV::Row "header1":"valid1" "header2":"valid2" "header4":"valid4">
```
