# String#match?

### def match?(regexp, pos = 0) -> bool

regexp.match?(self, pos) と同じです。
regexp が文字列の場合は、正規表現にコンパイルします。
詳しくは [Regexp#match?](../../../method/Regexp/i/match=3f.md) を参照してください。

```ruby title="例"
p "Ruby".match?(/R.../)  # => true
p "Ruby".match?(/R.../, 1) # => false
p "Ruby".match?(/P.../)  # => false
p $&                     # => nil
```

- **SEE** [Regexp#match?](../../../method/Regexp/i/match=3f.md), [Symbol#match?](../../../method/Symbol/i/match=3f.md)
