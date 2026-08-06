# CSV::Row#include?

### def header?(name) -> bool
### def include?(name) -> bool

自身のヘッダに与えられた値が含まれている場合は真を返します。
そうでない場合は偽を返します。

- **param** `name` -- この行のヘッダに含まれているかどうか調べたい値を指定します。

```ruby title="例"
require "csv"

row = CSV::Row.new(["header1", "header2"], [1, 2])
p row.header?("header1") # => true
p row.header?("header3") # => false
```
