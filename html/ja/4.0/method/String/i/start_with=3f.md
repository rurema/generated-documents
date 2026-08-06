# String#start_with?

### def start_with?(*prefixes) -> bool

self の先頭が prefixes のいずれかであるとき true を返します。

- **param** `prefixes` -- パターンを表す文字列または正規表現 (のリスト)

```ruby title="例"
p "string".start_with?("str")        # => true
p "string".start_with?("ing")        # => false
p "string".start_with?("ing", "str") # => true
p "string".start_with?(/\w/)         # => true
p "string".start_with?(/\d/)         # => false
```

- **SEE** [String#end_with?](../../../method/String/i/end_with=3f.md)
- **SEE** [String#delete_prefix](../../../method/String/i/delete_prefix.md), [String#delete_prefix!](../../../method/String/i/delete_prefix=21.md)
