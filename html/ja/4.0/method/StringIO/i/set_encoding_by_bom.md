# StringIO#set_encoding_by_bom

### def set_encoding_by_bom -> Encoding | nil
{: since="2.7.0"}

自身の BOM からエンコーディングを設定します。

自身が BOM から始まる場合、BOM を読み進めて外部エンコーディングをセットし、セットしたエンコーディングを返します。
BOM が見付からなかった場合は nil を返します。

```ruby title="例"
require 'stringio'

s = StringIO.new("\u{FEFF}abc".b)
p s.set_encoding_by_bom  # => #<Encoding:UTF-8>
p s.read                 # => "abc"

s2 = StringIO.new("abc".b)
p s2.set_encoding_by_bom # => nil
```

- **SEE** [IO#set_encoding_by_bom](../../../method/IO/i/set_encoding_by_bom.md)
