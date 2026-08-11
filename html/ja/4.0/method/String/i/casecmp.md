# String#casecmp

### def casecmp(other) -> -1 | 0 | 1 | nil

[String#<=>](../../../method/String/i/=3c=3d=3e.md) と同様に文字列の順序を比較しますが、アルファベットの大文字小文字の違いを無視します。

このメソッドの動作は組み込み変数 [m:$=] には影響されません。

[String#casecmp?](../../../method/String/i/casecmp=3f.md) と違って大文字小文字の違いを無視するのは
Unicode 全体ではなく、A-Z/a-z だけです。

- **param** `other` --    self と比較する文字列

```ruby title="例"
p "aBcDeF".casecmp("abcde")   # => 1
p "aBcDeF".casecmp("abcdef")  # => 0
p "aBcDeF".casecmp("abcdefg") # => -1
p "abcdef".casecmp("ABCDEF")  # => 0
```

nil は文字列のエンコーディングが非互換の時に返されます。

```ruby
p "\u{e4 f6 fc}".encode("ISO-8859-1").casecmp("\u{c4 d6 dc}") # => nil
```

- **SEE** [String#<=>](../../../method/String/i/=3c=3d=3e.md), [Encoding.compatible?](../../../method/Encoding/s/compatible=3f.md)
