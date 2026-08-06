# MatchData#regexp

### def regexp -> Regexp

自身の元になった正規表現オブジェクトを返します。

```ruby title="例"
m = /a.*b/.match("abc")
p m.regexp # => /a.*b/
```
