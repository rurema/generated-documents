# WIN32OLE_VARIANT#vartype

### def vartype -> Integer

selfの型情報を取得します。

型情報は、[WIN32OLE::VARIANT](../../../class/WIN32OLE=3a=3aVARIANT.md)の定数値の組み合わせです。

```ruby
obj = WIN32OLE_VARIANT.new("string")
p obj.vartype # => 8 (WIN32OLE::VARIANT::VT_BSTR)
bytes = WIN32OLE_VARIANT.new([1,2,3,4,5], VT_UI1 | VT_ARRAY)
p bytes.vartype # => 8209 (WIN32OLE::VARIANT::VT_ARRAY | VT_UI1)
```
