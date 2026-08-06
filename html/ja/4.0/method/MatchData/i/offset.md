# MatchData#offset

### def offset(n) -> [Integer, Integer] | [nil, nil]

`n` 番目の部分文字列のオフセットの配列 `[start, end]` を返します。

```ruby title="例"
[ self.begin(n), self.end(n) ]
```

と同じです。`n` 番目の部分文字列がマッチしていなければ
`[nil, nil]` を返します。

- **param** `n` -- 部分文字列を指定する数値

- **raise** `IndexError` -- 範囲外の `n` を指定した場合に発生します。

- **SEE** [MatchData#begin](../../../method/MatchData/i/begin.md), [MatchData#end](../../../method/MatchData/i/end.md), [MatchData#byteoffset](../../../method/MatchData/i/byteoffset.md)
### def offset(name) -> [Integer, Integer] | [nil, nil]

`name` という名前付きグループに対応する部分文字列のオフセットの配列 `[start, end]` を返します。

```ruby title="例"
[ self.begin(name), self.end(name) ]
```

と同じです。`name` の名前付きグループにマッチした部分文字列がなければ
`[nil, nil]` を返します。

- **param** `name` -- 名前(シンボルか文字列)

- **raise** `IndexError` -- 正規表現中で定義されていない `name` を指定した場合に発生します。

```ruby title="例"
/(?<year>\d{4})年(?<month>\d{1,2})月(?:(?<day>\d{1,2})日)?/ =~ "2021年1月"
p $~.offset('year')    # => [0, 4]
p $~.offset(:year)     # => [0, 4]
p $~.offset('month')   # => [5, 6]
p $~.offset(:month)    # => [5, 6]
p $~.offset('day')     # => [nil, nil]
p $~.offset('century') # ~> IndexError: undefined group name reference: century
```

- **SEE** [MatchData#begin](../../../method/MatchData/i/begin.md), [MatchData#end](../../../method/MatchData/i/end.md), [MatchData#byteoffset](../../../method/MatchData/i/byteoffset.md)
