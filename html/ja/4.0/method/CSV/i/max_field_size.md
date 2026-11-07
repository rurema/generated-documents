# CSV#max_field_size

### def max_field_size -> Integer | nil

フィールドの長さ(文字数)の上限を返します。制限していない場合は nil を返します。

[CSV.new](../../../method/CSV/s/new.md) の `:max_field_size` オプション、または `:field_size_limit` オプション(この場合は指定した値から 1 を引いた値)で設定します。

- **SEE** [CSV#field_size_limit](../../../method/CSV/i/field_size_limit.md)

```ruby title="例"
require "csv"

csv = CSV.new("a,b\n")
p csv.max_field_size # => nil

csv = CSV.new("a,b\n", max_field_size: 3)
p csv.max_field_size # => 3
p csv.field_size_limit # => 4

csv = CSV.new("a,b\n", field_size_limit: 4)
p csv.max_field_size # => 3
```
