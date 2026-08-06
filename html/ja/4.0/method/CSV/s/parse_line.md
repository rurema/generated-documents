# CSV.parse_line

### def CSV.parse_line(line, options = Hash.new) -> Array

このメソッドは一行の CSV 文字列を配列に変換するためのショートカットです。

- **param** `line` -- 文字列を指定します。複数行の文字列を指定した場合は、一行目以外は無視します。

- **param** `options` -- [CSV.new](../../../method/CSV/s/new.md) のオプションと同じオプションを指定できます。

```ruby title="例"
require 'csv'

p CSV.parse_line("1,taro,tanaka,20")
# => ["1", "taro", "tanaka", "20"]

p CSV.parse_line("1|taro|tanaka|20", col_sep: '|')
# => ["1", "taro", "tanaka", "20"]

# 列をダブルクオートで囲むとその中にカンマや改行を含める事もできる。
# 他の仕様も含め詳しくはRFC4180を参照。
p CSV.parse_line("1,\"ta,ro\",\"tana\nka\", 20")
# => ["1", "ta,ro", "tana\nka", " 20"]
```
