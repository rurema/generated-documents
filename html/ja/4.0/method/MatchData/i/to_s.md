# MatchData#to_s

### def to_s -> String

マッチした文字列全体を返します。

```ruby title="例"
/bar/ =~ "foobarbaz"
p $~.to_s       # => "bar"
```
