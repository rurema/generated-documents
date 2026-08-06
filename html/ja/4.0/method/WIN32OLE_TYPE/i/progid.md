# WIN32OLE_TYPE#progid

### def progid -> String | nil

selfのPROGIDを取得します。

PROGIDは、生成可能なOLEオートメーションサーバのCoClass（コンポーネントクラス）が持つレジストリ登録名です。[WIN32OLE.new](../../../method/WIN32OLE/s/new.md)の引数に指定して
WIN32OLEオブジェクトを生成できます。

- **return** -- selfのPROGIDを文字列で返します。selfがPROGIDを持たない、または
        CoClassでない場合はnilを返します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Application')
p tobj.progid   # => "Excel.Application.14"
```

この例は、ExcelのApplicationクラスが「Excel.Application.14」という
PROGIDを持つことを示します。

- **SEE** [WIN32OLE.new](../../../method/WIN32OLE/s/new.md)
