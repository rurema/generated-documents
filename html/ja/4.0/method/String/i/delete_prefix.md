# String#delete_prefix

### def delete_prefix(prefix) -> String

文字列の先頭から prefix を削除した文字列のコピーを返します。

- **param** `prefix` -- 先頭から削除する文字列を指定します。

- **return** -- 文字列の先頭から prefix を削除した文字列のコピー

```ruby
p "hello".delete_prefix("hel") # => "lo"
p "hello".delete_prefix("llo") # => "hello"
```

- **SEE** [String#delete_prefix!](../../../method/String/i/delete_prefix=21.md)
- **SEE** [String#delete_suffix](../../../method/String/i/delete_suffix.md)
- **SEE** [String#start_with?](../../../method/String/i/start_with=3f.md)
