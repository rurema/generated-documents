# CSV#skip_blanks?

### def skip_blanks? -> bool

真である場合は、空行を読み飛ばします。

```ruby title="例"
require "csv"

csv = CSV.new("header1,header2\n\nrow1_1,row1_2")
p csv.skip_blanks? # => false
p csv.read       # => [["header1", "header2"], [], ["row1_1", "row1_2"]]
csv = CSV.new("header1,header2\n\nrow1_1,row1_2", skip_blanks: true)
p csv.skip_blanks? # => true
p csv.read       # => [["header1", "header2"], ["row1_1", "row1_2"]]
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
