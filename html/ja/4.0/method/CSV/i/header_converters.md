# CSV#header_converters

### def header_converters -> Array

現在有効なヘッダ用変換器のリストを返します。

組込みの変換器は名前を返します。それ以外は、オブジェクトを返します。

```ruby title="例"
require "csv"

csv = CSV.new("HEADER1,HEADER2\nrow1_1,row1_2", headers: true, header_converters: CSV::HeaderConverters.keys)
p csv.header_converters # => [:downcase, :symbol]
p csv.read.to_a       # => [[:header1, :header2], ["row1_1", "row1_2"]]
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
