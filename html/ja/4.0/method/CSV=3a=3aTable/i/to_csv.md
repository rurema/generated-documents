# CSV::Table#to_csv

### def to_csv(write_headers: true, limit: nil, **options) -> String
### def to_s(write_headers: true, limit: nil, **options) -> String

CSV の文字列に変換して返します。

ヘッダを一行目に出力します。その後に残りのデータを出力します。

デフォルトでは、ヘッダを出力します。オプションに :write_headers =>
false を指定するとヘッダを出力しません。

- **param** `write_headers` -- 偽を指定するとヘッダを出力しません。

- **param** `limit` -- 出力するデータの行数を指定します。正の値を指定すると先頭から `limit` 行を出力し、負の値を指定すると末尾の `-limit - 1` 行を除いて出力します(-1 ならすべての行を出力します)。nil を指定するとすべての行を出力します。`write_headers` で出力するヘッダはこの行数に含みません。

- **param** `options` -- 各行を CSV の文字列に変換する [CSV.generate_line](../../../method/CSV/s/generate_line.md) に渡すオプションを指定します。

```ruby
require 'csv'
csv = CSV.new("a,b,c\n1,2,3", headers: true)
table = csv.read
p table.to_csv                       # => "a,b,c\n1,2,3\n"
p table.to_csv(write_headers: false) # => "1,2,3\n"
```


```ruby title="例 limit の指定"
require "csv"
table = CSV::Table.new([CSV::Row.new(%w[a b], [1, 2]), CSV::Row.new(%w[a b], [3, 4])])
p table.to_csv(limit: 1)                     # => "a,b\n1,2\n"
p table.to_s(limit: 1, write_headers: false) # => "1,2\n"
p table.to_csv(limit: -1)                    # => "a,b\n1,2\n3,4\n"
```
