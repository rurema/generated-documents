# String#chop!

### def chop! -> self | nil

文字列の最後の文字を取り除きます。
ただし、終端が "\r\n" であればその 2 文字を取り除きます。

- **return** -- chop! は self を変更して返しますが、取り除く文字がなかった場合は nil を返します。

```ruby title="例"
str = "string\r\n"
ret = str.chop!
p ret                # => "string"
p str                # => "string"
p str.chop!          # => "strin"
p "".chop!           # => nil
```

- **SEE** [String#chomp!](../../../method/String/i/chomp=21.md)
- **SEE** [String#chop](../../../method/String/i/chop.md)
- **SEE** [String#delete_suffix!](../../../method/String/i/delete_suffix=21.md)
