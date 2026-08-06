# WIN32OLE_TYPE#default_ole_types

### def default_ole_types -> [WIN32OLE_TYPE]

型が持つデフォルトのインターフェイスを取得します。

default_ole_typesメソッドは、selfがCoClass（コンポーネントクラス）の場合、そのクラスが実装しているデフォルトのインターフェイスと、サポートしていればデフォルトのソースインターフェイスを返します。

- **return** -- デフォルトインターフェイスを[WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)の配列として返し
        ます。デフォルトインターフェイスは、最大でも、クラス操作用のイ
        ンターフェイス（OLEオートメーション用）と、イベント用のソースイ
        ンターフェイスの2要素です。デフォルトインターフェイスを持たない
        場合は空配列を返します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Worksheet')
p tobj.default_ole_types.map {|intf| intf.name} #=> ["_Worksheet", "DocEvents"]
```
