# String#chop

### def chop -> String

文字列の最後の文字を取り除いた新しい文字列を生成して返します。
ただし、文字列の終端が "\r\n" であればその 2 文字を取り除きます。

```ruby title="例"
p "string\n".chop    # => "string"
p "string\r\n".chop  # => "string"
p "string".chop      # => "strin"
p "strin".chop       # => "stri"
p "".chop            # => ""
```

- **SEE** [String#chomp](../../../method/String/i/chomp.md)
- **SEE** [String#chop!](../../../method/String/i/chop=21.md)
- **SEE** [String#delete_suffix](../../../method/String/i/delete_suffix.md)
