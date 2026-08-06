# MatchData#string

### def string -> String

マッチ対象になった文字列の複製を返します。

返す文字列はフリーズ([Object#freeze](../../../method/Object/i/freeze.md))されています。

```ruby title="例"
m = /(.)(.)(\d+)(\d)/.match("THX1138.")
p m.string # => "THX1138."
```
