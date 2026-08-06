# MatchData#post_match

### def post_match -> String

マッチした部分より後ろの文字列を返します([m:$']と同じ)。

```ruby title="例"
/(bar)(BAZ)?/ =~ "foobarbaz"
p $~.post_match # => "baz"
```

- **SEE** [MatchData#pre_match](../../../method/MatchData/i/pre_match.md)
