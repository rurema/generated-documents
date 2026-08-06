# String#delete_suffix!

### def delete_suffix!(suffix) -> self | nil

self の末尾から破壊的に suffix を削除します。

- **param** `suffix` -- 末尾から削除する文字列を指定します。

- **return** -- 削除した場合は self、変化しなかった場合は nil

```ruby
p "hello".delete_suffix!("llo") # => "he"
p "hello".delete_suffix!("hel") # => nil
```

- **SEE** [String#chomp!](../../../method/String/i/chomp=21.md)
- **SEE** [String#chop!](../../../method/String/i/chop=21.md)
- **SEE** [String#delete_prefix!](../../../method/String/i/delete_prefix=21.md)
- **SEE** [String#delete_suffix](../../../method/String/i/delete_suffix.md)
- **SEE** [String#end_with?](../../../method/String/i/end_with=3f.md)
