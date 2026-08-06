# CSV::Table#inspect

### def inspect -> String

モードとサイズを US-ASCII な文字列で返します。

```ruby
require 'csv'
csv = CSV.new("a,b,c\n1,2,3", headers: true)
table = csv.read
p table.inspect # => "#<CSV::Table mode:col_or_row row_count:2>"
```
