# MatchData#length

### def length -> Integer
### def size -> Integer

部分文字列の数を返します(`self.to_a.size` と同じです)。

```ruby title="例"
/(foo)(bar)(BAZ)?/ =~ "foobarbaz"
p $~.size       # => 4
```
