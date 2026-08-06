# WIN32OLE_METHOD#return_type_detail

### def return_type_detail -> [String]

返り値の型と属性を取得します。

- **return** -- 返り値の型と属性を文字列配列で返します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Application')
method = WIN32OLE_METHOD.new(tobj, 'Workbooks')
p method.return_type_detail # => ["PTR", "USERDEFINED", "Workbooks"]
```

属性が付加されていない場合は、[WIN32OLE_METHOD#return_type](../../../method/WIN32OLE_METHOD/i/return_type.md)を要素とした配列が返ります。

返り値の取り得る属性値はCOMのIDL（インターフェイス定義言語）によって規定されています。

- **SEE** <http://msdn.microsoft.com/en-us/library/aa367042(VS.85).aspx>
