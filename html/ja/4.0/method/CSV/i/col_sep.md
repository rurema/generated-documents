# CSV#col_sep

### def col_sep -> String

カラム区切り文字列として使用する文字列を返します。

```ruby title="例"
require "csv"

users =<<-EOS
id|first name|last name|age
1|taro|tanaka|20
2|jiro|suzuki|18
3|ami|sato|19
4|yumi|adachi|21
EOS

csv = CSV.new(users, headers: true, col_sep: "|")
p csv.col_sep # => "|"
p csv.first.to_a # => [["id", "1"], ["first name", "taro"], ["last name", "tanaka"], ["age", "20"]]

csv = CSV.new(users, headers: true)
p csv.col_sep # => ","
p csv.first.to_a # => [["id|first name|last name|age", "1|taro|tanaka|20"]]
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
