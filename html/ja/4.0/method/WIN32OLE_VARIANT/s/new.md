# WIN32OLE_VARIANT.new

### def WIN32OLE_VARIANT.new(val, vartype = nil) -> WIN32OLE_VARIANT

指定したオブジェクトを値とするWIN32OLE_VARIANTオブジェクトを生成します。

- **param** `val` -- ラップするRubyオブジェクトを指定します。
- **param** `vartype` -- 省略時はWIN32OLEが自動型変換を行います。指定する場合は
               [WIN32OLE::VARIANT](../../../class/WIN32OLE=3a=3aVARIANT.md)の定数を指定してください。
- **return** -- val引数を値として持つWIN32OLE_VARIANTオブジェクトを返します。

- **raise** `TypeError` -- val引数の型がArray、String、Integer、Float、Time、
                 WIN32OLE、WIN32OLE_VARIANT、TrueClass、FalseClass、
                 NilClass のいずれでもありません。

```ruby
shell = WIN32OLE.new('Shell.Application')
folder = shell.NameSpace('C:\\Users\\Public\\Documents')
item = folder.ParseName('test.txt')
v = WIN32OLE_VARIANT.new('Delete')
p item.invokeVerb(v)   # => ゴミ箱への移動ダイアログを表示
```

バイト配列を生成するには、以下のようにvartype引数にVT_UI1 | VT_ARRAYを設定します。バイト配列の値のRuby表現はエンコーディングをASCII-8BITに設定した文字列となります。

```ruby
include WIN32OLE::VARIANT
bytes = WIN32OLE_VARIANT.new([1,2,3,4,5], VT_UI1 | VT_ARRAY)
p bytes.value        #=> "\x01\x02\x03\x04\x05"
p bytes.value.encoding #=> #<Encoding:ASCII-8BIT>
```

- **SEE** [WIN32OLE::VARIANT](../../../class/WIN32OLE=3a=3aVARIANT.md)
