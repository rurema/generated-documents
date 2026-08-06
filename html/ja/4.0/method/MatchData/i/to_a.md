# MatchData#to_a

### def to_a -> [String]

[m:$&], [m:$1], [m:$2],... を格納した配列を返します。

```ruby title="例"
/(foo)(bar)(BAZ)?/ =~ "foobarbaz"
p $~.to_a       # => ["foobar", "foo", "bar", nil]
```

- **SEE** [MatchData#captures](../../../method/MatchData/i/captures.md)
