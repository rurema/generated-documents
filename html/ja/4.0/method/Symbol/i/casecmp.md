# Symbol#casecmp

### def casecmp(other) -> -1 | 0 | 1 | nil

[Symbol#<=>](../../../method/Symbol/i/=3c=3d=3e.md) と同様にシンボルに対応する文字列の順序を比較しますが、アルファベットの大文字小文字の違いを無視します。

[Symbol#casecmp?](../../../method/Symbol/i/casecmp=3f.md) と違って大文字小文字の違いを無視するのは
Unicode 全体ではなく、A-Z/a-z だけです。

- **param** `other` -- 比較対象のシンボルを指定します。

```ruby
p :aBcDeF.casecmp(:abcde)   # => 1
p :aBcDeF.casecmp(:abcdef)  # => 0
p :aBcDeF.casecmp(:abcdefg) # => -1
p :abcdef.casecmp(:ABCDEF)  # => 0
p :"\u{e4 f6 fc}".casecmp(:"\u{c4 d6 dc}") # => 1
```

other がシンボルではない場合や、文字列のエンコーディングが非互換の場合は、nil を返します。

```ruby
p :foo.casecmp("foo") # => nil
p "\u{e4 f6 fc}".encode("ISO-8859-1").to_sym.casecmp(:"\u{c4 d6 dc}") # => nil
```

- **SEE** [String#casecmp](../../../method/String/i/casecmp.md), [Symbol#<=>](../../../method/Symbol/i/=3c=3d=3e.md), [Symbol#casecmp?](../../../method/Symbol/i/casecmp=3f.md)
