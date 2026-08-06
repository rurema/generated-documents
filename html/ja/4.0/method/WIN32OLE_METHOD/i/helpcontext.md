# WIN32OLE_METHOD#helpcontext

### def helpcontext -> Integer | nil

メソッドのヘルプコンテキストを取得します。

ヘルプコンテキストは、関連するヘルプファイル上のトピック位置を示す整数値です。

- **return** -- ヘルプコンテキストを返します。未定義の場合はnilを返します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Workbooks')
method = WIN32OLE_METHOD.new(tobj, 'Add')
puts method.helpcontext # => 65717
```

WIN32OLE_METHODオブジェクトを引数として、[WIN32OLE.ole_show_help](../../../method/WIN32OLE/s/ole_show_help.md)でヘルプファイルを表示する場合には、WIN32OLEが内部で当メソッドを呼び出します。

- **SEE** [WIN32OLE.ole_show_help](../../../method/WIN32OLE/s/ole_show_help.md)
