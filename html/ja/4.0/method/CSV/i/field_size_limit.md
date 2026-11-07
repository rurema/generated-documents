# CSV#field_size_limit

### def field_size_limit -> Integer | nil

フィールドサイズの最大値を返します。

3.2 以降は [CSV#max_field_size](../../../method/CSV/i/max_field_size.md) に 1 を足した値(`:max_field_size` が nil なら nil)を返します。


```ruby title="例"
require "csv"

text = <<~CSV
  "a","b"
  "
  2
  2
  ",""
CSV

csv = CSV.new(text)
p csv.field_size_limit # => nil
p csv.read # => [["a", "b"], ["\n2\n2\n", ""]]

csv = CSV.new(text, field_size_limit: 4)
p csv.field_size_limit # => 4
csv.read # ~> CSV::MalformedCSVError: Field size exceeded: 5 > 3 in line 2.
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
