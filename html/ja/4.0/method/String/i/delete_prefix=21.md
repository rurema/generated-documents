# String#delete_prefix!

### def delete_prefix!(prefix) -> self | nil

self の先頭から破壊的に prefix を削除します。

- **param** `prefix` -- 先頭から削除する文字列を指定します。

- **return** -- 削除した場合は self、変化しなかった場合は nil

```ruby
p "hello".delete_prefix!("hel") # => "lo"
p "hello".delete_prefix!("llo") # => nil
```

- **SEE** [String#delete_prefix](../../../method/String/i/delete_prefix.md)
- **SEE** [String#delete_suffix!](../../../method/String/i/delete_suffix=21.md)
- **SEE** [String#start_with?](../../../method/String/i/start_with=3f.md)
