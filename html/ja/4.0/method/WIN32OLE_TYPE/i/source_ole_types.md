# WIN32OLE_TYPE#source_ole_types

### def source_ole_types -> [WIN32OLE_TYPE]

型が持つソースインターフェイスを取得します。

source_ole_typesメソッドは、selfがCoClass（コンポーネントクラス）の場合、そのクラスがサポートするすべてのソースインターフェイス（イベントの通知元となるインターフェイス）を返します。

ActiveXコントロールのようにイベント（[WIN32OLE_EVENT](../../../class/WIN32OLE_EVENT.md)）をサポートしているコンポーネントクラスの場合は、このメソッドの呼び出しによりイベントインターフェイスを調べることが可能です。

- **return** -- ソースインターフェイスを[WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)の配列として返します。
        ソースインターフェイスを持たない場合は空配列を返します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Worksheet')
p tobj.source_ole_types.map {|intf| intf.name} #=> ["DocEvents"]
```
