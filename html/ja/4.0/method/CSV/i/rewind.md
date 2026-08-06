# CSV#rewind

### def rewind -> 0

[IO#rewind](../../../method/IO/i/rewind.md) に似ています。[CSV#lineno](../../../method/CSV/i/lineno.md) を 0 にします。

```ruby title="例"
require "csv"

csv = CSV.new("header1,header2\nrow1_1,row1_2")
p csv.lineno # => 0
csv.readline
p csv.lineno # => 1
csv.rewind
p csv.lineno # => 0
```

- **SEE** [IO#rewind](../../../method/IO/i/rewind.md)
