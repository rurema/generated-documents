# String#valid_encoding?

### def valid_encoding?  -> bool

文字列の内容が、現在のエンコーディングに照らしあわせて妥当であれば
true を返します。そうでない場合は false を返します。

```ruby title="例"
p "\xc2\xa1".force_encoding("UTF-8").valid_encoding?  #=> true
p "\xc2".force_encoding("UTF-8").valid_encoding?    #=> false
p "\x80".force_encoding("UTF-8").valid_encoding?    #=> false
```
