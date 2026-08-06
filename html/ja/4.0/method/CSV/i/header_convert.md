# CSV#header_convert

### def header_convert(name)
### def header_convert{|field| ... }
### def header_convert{|field, field_info| ... }

[CSV#convert](../../../method/CSV/i/convert.md) に似ていますが、ヘッダ行用のメソッドです。

このメソッドはヘッダ行を読み込む前に呼び出さなければなりません。

- **param** `name` -- 変換器の名前を指定します。

```ruby title="例 name を指定"
require "csv"

csv = CSV.new("header1,header2\nrow1_1,row1_2", headers: true)
csv.header_convert(:symbol)
p csv.first.headers # => [:header1, :header2]
```

```ruby title="例 ブロックを指定"
require "csv"

csv = CSV.new("header1,header2\nrow1_1,row1_2", headers: true)
csv.header_convert do |field|
  field.to_sym
end
p csv.first.headers # => [:header1, :header2]
```

- **SEE** [CSV#header_converters](../../../method/CSV/i/header_converters.md), [CSV#convert](../../../method/CSV/i/convert.md)
