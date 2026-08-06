# CSV::Table#push

### def push(*rows) -> self

複数の行を追加するためのショートカットです。

以下と同じです。

```ruby
rows.each {|row| self << row }
```

- **param** `rows` -- [CSV::Row](../../../class/CSV=3a=3aRow.md) のインスタンスか配列を指定します。

```ruby title="例"
require 'csv'
csv = CSV.new("a,b,c\n1,2,3", headers: true)
table = csv.read
rows = [
  CSV::Row.new(table.headers, [4, 5, 6]),
  [7, 8, 9]
]

table.push(*rows)
p table[0..2]
# => [#<CSV::Row "a":"1" "b":"2" "c":"3">, #<CSV::Row "a":4 "b":5 "c":6>, #<CSV::Row "a":7 "b":8 "c":9>]
```

- **SEE** [CSV::Table#<<](../../../method/CSV=3a=3aTable/i/=3c=3c.md)
