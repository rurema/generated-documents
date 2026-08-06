# CSV#write_headers?

### def write_headers? -> bool

ヘッダを出力先に書き込む場合は真を返します。
そうでない場合は偽を返します。

```ruby title="例"
require "csv"

csv = CSV.new("date1,date2\n2018-07-09,2018-07-10")
p csv.write_headers? # => nil

header = ["header1", "header2"]
row = ["row1_1", "row1_2"]
result = CSV.generate(headers: header, write_headers: false) do |csv|
  p csv.write_headers? # => false
  csv << row
end
p result # => "row1_1,row1_2\n"

result = CSV.generate(headers: header, write_headers: true) do |csv|
  p csv.write_headers? # => true
  csv << row
end
p result # => "header1,header2\nrow1_1,row1_2\n"
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
