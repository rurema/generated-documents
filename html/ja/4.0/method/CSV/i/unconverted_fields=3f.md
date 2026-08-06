# CSV#unconverted_fields?

### def unconverted_fields? -> bool

パースした結果が unconverted_fields というメソッドを持つ場合に真を返します。
そうでない場合は、偽を返します。


```ruby title="例"
require "csv"

csv = CSV.new("date1,date2\n2018-07-09,2018-07-10")
p csv.unconverted_fields? # => nil
csv = CSV.new("date1,date2\n2018-07-09,2018-07-10", unconverted_fields: false)
p csv.unconverted_fields? # => false
csv = CSV.new("date1,date2\n2018-07-09,2018-07-10", headers: true, unconverted_fields: true)
p csv.unconverted_fields? # => true
csv.convert(:date)
row = csv.readline
p row.fields            # => [#<Date: 2018-07-09 ((2458309j,0s,0n),+0s,2299161j)>, #<Date: 2018-07-10 ((2458310j,0s,0n),+0s,2299161j)>]
p row.unconverted_fields  # => ["2018-07-09", "2018-07-10"]
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
