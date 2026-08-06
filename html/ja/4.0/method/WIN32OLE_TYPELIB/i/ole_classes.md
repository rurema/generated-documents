# WIN32OLE_TYPELIB#ole_classes

### def ole_types -> [WIN32OLE_TYPE]
### def ole_classes -> [WIN32OLE_TYPE]

TypeLibに格納されているすべての型を取得します。

TypeLibに格納されている型には、クラス（CoClass——コンポーネントクラス）やEnum（列挙子）、構造体などがあります。

- **return** -- TypeLibに格納されているすべての型を[WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)オブジェ
        クトの配列として返します。

```ruby
tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 14.0 Object Library')
classes = tlib.ole_types.map{|k| k.name} # => ["Adjustments", "CalloutFormat", ...]
```
