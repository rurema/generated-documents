# WIN32OLE_TYPE#ole_typelib

### def ole_typelib -> WIN32OLE_TYPELIB | nil

この型を登録してある型情報ライブラリ（TypeLib）を取得します。

- **return** -- この型を登録しているTypeLibを[WIN32OLE_TYPELIB](../../../class/WIN32OLE_TYPELIB.md)オブジェクトとして返します。見つからない場合はnilを返します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Worksheet')
puts tobj.ole_typelib.name  # => 'Microsoft Excel 14.0 Object Library'
```
