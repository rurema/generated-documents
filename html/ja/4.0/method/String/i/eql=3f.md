# String#eql?

### def eql?(other) -> bool

文字列の内容が文字列 other の内容と等しいときに true を返します。
等しくなければ false を返します。

このメソッドは文字列の内容を比較します。
同一のオブジェクトかどうかを比較するわけではありません。
つまり、"string".eql?(str) という式を実行した場合には、
str が "string" という内容の文字列でありさえすれば常に true を返します。
同一のオブジェクトであるかどうかを判定したいときは
[Object#equal?](../../../method/Object/i/equal=3f.md) を使ってください。

アルファベットの大文字小文字を無視して比較したい場合は
[String#casecmp?](../../../method/String/i/casecmp=3f.md) を使ってください。

[Hash](../../../class/Hash.md) クラス内での比較に使われます。

- **param** `other` --    任意のオブジェクト
- **return** --         true か false

```ruby title="例"
p "string".eql?("string")  # => true
p "string".eql?("STRING")  # => false
p "string".eql?("")        # => false
p "".eql?("string")        # => false

p "string".eql?("str" + "ing")   # => true   (内容が同じなら true)
p "string".eql?("stringX".chop)  # => true   (内容が同じなら true)
```

- **SEE** [Hash](../../../class/Hash.md), [String#<=>](../../../method/String/i/=3c=3d=3e.md), [String#casecmp](../../../method/String/i/casecmp.md), [String#==](../../../method/String/i/=3d=3d.md)
