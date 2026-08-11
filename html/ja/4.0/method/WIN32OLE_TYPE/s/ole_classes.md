# WIN32OLE_TYPE.ole_classes

### def WIN32OLE_TYPE.ole_classes(libname) -> [WIN32OLE_TYPE]

TypeLibで定義されているすべての型情報を取得します。

- **param** `libname` -- 生成するTypeLibのレジストリ上のドキュメント文字列（[WIN32OLE_TYPELIB#name](../../../method/WIN32OLE_TYPELIB/i/name.md)）または
               GUID（[WIN32OLE_TYPELIB#guid](../../../method/WIN32OLE_TYPELIB/i/guid.md)）またはTLBファイル名を文字列で指定します。
- **return** -- TypeLibに格納されているすべての型を[WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)オブジェクトの配列として返します。
- **raise** `WIN32OLERuntimeError` -- 引数で指定したTypeLibが見つかりません。

```ruby
types = WIN32OLE_TYPE.ole_classes('Microsoft Excel 14.0 Object Library')
classes = types.map{|k| k.name} # => ["Adjustments", "CalloutFormat", ...]
```

Ruby-1.9.1からは、TypeLibに定義されているすべての型を取得するには、
[WIN32OLE_TYPELIB](../../../class/WIN32OLE_TYPELIB.md)オブジェクトの[WIN32OLE_TYPELIB#ole_types](../../../method/WIN32OLE_TYPELIB/i/ole_types.md)メソッドを利用してください。
