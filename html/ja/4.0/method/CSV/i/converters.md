# CSV#converters

### def converters -> Array

現在の変換器のリストを返します。

```ruby title="例"
require "csv"

csv = CSV.new("header1,header2\nrow1_1,row1_2", converters: CSV::Converters.keys)
p csv.converters  # => [:integer, :float, :integer, :float, :date, :date_time, :date_time, :integer, :float]
```

- **SEE** [CSV::Converters](../../../method/CSV/c/Converters.md)
