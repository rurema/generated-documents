# MatchData#pre_match

### def pre_match -> String

マッチした部分より前の文字列を返します([m:$`]と同じ)。

```ruby title="例"
/(bar)(BAZ)?/ =~ "foobarbaz"
p $~.pre_match  # => "foo"
```

- **SEE** [MatchData#post_match](../../../method/MatchData/i/post_match.md)
