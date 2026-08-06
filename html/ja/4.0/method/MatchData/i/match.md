# MatchData#match

### def match(n) -> String | nil
### def match(name) -> String | nil

`n` 番目、または `name` という名前のグループにマッチした部分文字列を返します。

[MatchData#\[\]](../../../method/MatchData/i/=5b=5d.md) と似ていますが、範囲や複数要素の指定はできず、単一のグループに対応する部分文字列だけを返します。
マッチしていないグループを指定した場合は `nil` を返します。

- **param** `n` -- 返す部分文字列のインデックスを `0` 以上の整数で指定します。
           `0` はマッチ全体を意味します。
- **param** `name` -- 名前付きグループの名前を [String](../../../class/String.md) か [Symbol](../../../class/Symbol.md) で指定します。
- **raise** `IndexError` -- 範囲外の `n` や、存在しない `name` を指定した場合に発生します。

```ruby title="例"
m = /(.)(.)(\d+)(\d)(\w)?/.match("THX1138.")
p m.match(0) # => "HX1138"
p m.match(4) # => "8"
p m.match(5) # => nil

m = /(?<foo>.)(.)(?<bar>.+)/.match("hoge")
p m.match(:foo) # => "h"
p m.match(:bar) # => "ge"
```

- **SEE** [MatchData#\[\]](../../../method/MatchData/i/=5b=5d.md), [MatchData#match_length](../../../method/MatchData/i/match_length.md)
