# Symbol#match?

### def match?(regexp, pos = 0) -> bool

regexp.match?(self, pos) と同じです。
regexp が文字列の場合は、正規表現にコンパイルします。
詳しくは [Regexp#match?](../../../method/Regexp/i/match=3f.md) を参照してください。

```ruby title="例"
p :Ruby.match?(/R.../)  # => true
p :Ruby.match?('Ruby')  # => true
p :Ruby.match?('Ruby',1)  # => false
p :Ruby.match?('uby',1) # => true
p :Ruby.match?(/P.../)  # => false
p $&                    # => nil
```

- **SEE** [Regexp#match?](../../../method/Regexp/i/match=3f.md), [String#match?](../../../method/String/i/match=3f.md)
