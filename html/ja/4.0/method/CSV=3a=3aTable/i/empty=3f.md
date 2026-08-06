# CSV::Table#empty?

### def empty? -> bool

ヘッダーを除いて、データがないときに true を返します。

[Array#empty?](../../../method/Array/i/empty=3f.md) に委譲しています。

```ruby
require 'csv'
csv = CSV.new("a,b\n", headers: true)
table = csv.read
p table.empty?     # => true
table << [1, 2]
p table.empty?     # => false
```

- **SEE** [Array#empty?](../../../method/Array/i/empty=3f.md)
