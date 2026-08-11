# WIN32OLE_TYPE#implemented_ole_types

### def implemented_ole_types -> [WIN32OLE_TYPE]

この型が実装するインターフェイスを取得します。

implemented_ole_typesメソッドは、selfがCoClass（コンポーネントクラス）の場合、そのクラスが実装しているすべてのインターフェイスを返します。

- **return** -- クラスが実装するすべてのインターフェイスを[WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)の配列として返します。この型がインターフェイスを実装しない場合は、空配列を返します。

- **raise** `WIN32OLERuntimeError` -- 型属性が取得できない場合に通知します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Worksheet')
p tobj.implemented_ole_types.map {|intf| intf.name} # => ["_Worksheet", "DocEvents"]
```
