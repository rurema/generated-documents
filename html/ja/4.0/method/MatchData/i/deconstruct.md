# MatchData#deconstruct

### def captures -> [String]
### def deconstruct -> [String]

[m:$1], [m:$2], ... を格納した配列を返します。

[MatchData#to_a](../../../method/MatchData/i/to_a.md) と異なり [m:$&] を要素に含みません。
グループにマッチした部分文字列がなければ対応する要素は `nil` になります。

```ruby title="例"
/(foo)(bar)(BAZ)?/ =~ "foobarbaz"
p $~.to_a       # => ["foobar", "foo", "bar", nil]
p $~.captures   # => ["foo", "bar", nil]
```

- **SEE** [MatchData#to_a](../../../method/MatchData/i/to_a.md), [MatchData#named_captures](../../../method/MatchData/i/named_captures.md), [spec/pattern_matching#matching_non_primitive_objects](../../../doc/spec=2fpattern_matching.md#matching_non_primitive_objects)
