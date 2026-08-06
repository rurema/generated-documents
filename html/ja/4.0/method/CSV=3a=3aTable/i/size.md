# CSV::Table#size

### def length -> Integer
### def size -> Integer

(ヘッダを除く)行数を返します。

[Array#length](../../../method/Array/i/length.md), [Array#size](../../../method/Array/i/size.md) に委譲しています。

```ruby
require 'csv'
csv = CSV.new("a,b,c\n1,2,3", headers: true)
table = csv.read
p table.size  # => 1
```

- **SEE** [Array#length](../../../method/Array/i/length.md), [Array#size](../../../method/Array/i/size.md)
