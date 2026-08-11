# WIN32OLE_TYPE.new

### def WIN32OLE_TYPE.new(libname, ole_class) -> WIN32OLE_TYPE

WIN32OLE_TYPEオブジェクトを生成します。

- **param** `libname` -- 生成するTypeLibのレジストリ上のドキュメント文字列（[WIN32OLE_TYPELIB#name](../../../method/WIN32OLE_TYPELIB/i/name.md)）または
               GUID（[WIN32OLE_TYPELIB#guid](../../../method/WIN32OLE_TYPELIB/i/guid.md)）またはTLBファイル名を文字列で指定します。
- **param** `ole_class` -- 型情報を取り出す型の名前を指定します。
- **return** -- 指定されたTypeLIbに定義された型の情報を格納したWIN32OLE_TYPEオブジェクトを返します。
- **raise** `WIN32OLERuntimeError` -- TypeLibが見つかりません。またはole_classで指定した型が未定義です。

```ruby
excel_app_type = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Application')
puts excel_app_type.progid # => "Excel.Application.14"
```

TypeLibに定義されているすべての型を取得するには、
[WIN32OLE_TYPELIB](../../../class/WIN32OLE_TYPELIB.md)オブジェクトの[WIN32OLE_TYPELIB#ole_types](../../../method/WIN32OLE_TYPELIB/i/ole_types.md)メソッドを利用します。
