# String#end_with?

### def end_with?(*strs) -> bool

self の末尾が strs のいずれかであるとき true を返します。

- **param** `strs` --    パターンを表す文字列 (のリスト)

```ruby title="例"
p "string".end_with?("ing")        # => true
p "string".end_with?("str")        # => false
p "string".end_with?("str", "ing") # => true
```

- **SEE** [String#start_with?](../../../method/String/i/start_with=3f.md)
- **SEE** [String#delete_suffix](../../../method/String/i/delete_suffix.md), [String#delete_suffix!](../../../method/String/i/delete_suffix=21.md)
