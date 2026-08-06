# CSV#quote_char

### def quote_char -> String

フィールドをクオートするのに使用する文字列を返します。

```ruby title="例"
require "csv"

csv = CSV.new("header1,header2\nrow1_1,row1_2", quote_char: "'")
p csv.quote_char # => "'"
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
