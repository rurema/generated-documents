# Fiddle::Importer#value

### def create_value(type, val = nil) -> Fiddle::CStruct
### def value(type, val = nil) -> Fiddle::CStruct

型が type で要素名が "value" であるような構造体を定義([Fiddle::Importer#struct](../../../method/Fiddle=3a=3aImporter/i/struct.md))し、その構造体のメモリを [Fiddle::CStruct.malloc](../../../method/Fiddle=3a=3aCStruct/s/malloc.md) で確保し、確保したメモリを保持しているオブジェクトを返します。

type は "int", "void*" といった文字列で型を指定します。
val に nil 以外を指定すると、確保された構造体にその値を代入します。

- **param** `type` -- 型を表す文字列
- **param** `val` -- 構造体に確保される初期値

```ruby title="例"
require 'fiddle/import'
  
module M
  extend Fiddle::Importer
end
  
v = M.value("int", 32)
p v.value # => 32
v.value = 48
p v.value # => 48
```
