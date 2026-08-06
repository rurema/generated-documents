# CSV::Row#index

### def index(header, minimum_index = 0) -> Integer

与えられたヘッダの名前に対応するインデックスを返します。

- **param** `header` -- ヘッダの名前を指定します。

- **param** `minimum_index` -- このインデックスより後で、ヘッダの名前を探します。
                     重複しているヘッダがある場合に便利です。

```ruby title="例"
require "csv"

row = CSV::Row.new(["header1", "header2", "header1"], [1, 2, 3])
p row.index("header1")  # => 0
p row.index("header1", 1) # => 2
```

- **SEE** [CSV::Row#field](../../../method/CSV=3a=3aRow/i/field.md)
