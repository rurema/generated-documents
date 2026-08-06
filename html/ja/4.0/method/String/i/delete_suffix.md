# String#delete_suffix

### def delete_suffix(suffix) -> String

文字列の末尾から suffix を削除した文字列のコピーを返します。

- **param** `suffix` -- 末尾から削除する文字列を指定します。

- **return** -- 文字列の末尾から suffix を削除した文字列のコピー

```ruby
p "hello".delete_suffix("llo") # => "he"
p "hello".delete_suffix("hel") # => "hello"
```

- **SEE** [String#chomp](../../../method/String/i/chomp.md)
- **SEE** [String#chop](../../../method/String/i/chop.md)
- **SEE** [String#delete_prefix](../../../method/String/i/delete_prefix.md)
- **SEE** [String#delete_suffix!](../../../method/String/i/delete_suffix=21.md)
- **SEE** [String#end_with?](../../../method/String/i/end_with=3f.md)
