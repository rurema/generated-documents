# WIN32OLE_METHOD.new

### def WIN32OLE_METHOD.new(ole_type,  method) -> WIN32OLE_METHOD

[WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)とメソッド名を指定してWIN32OLE_METHODのインスタンスを生成します。

OLEオートメーションサーバの型情報とメソッド名からWIN32OLE_METHODのインスタンスを生成します。

アプリケーションプログラムでは、WIN32OLE_METHODオブジェクトをnewメソッドで生成するよりも、[WIN32OLE#ole_method](../../../method/WIN32OLE/i/ole_method.md)などのメソッドを参照するほうが簡単です。

- **param** `ole_type` -- [WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)のインスタンス。
- **param** `method` -- メソッド名を文字列で指定します。
- **return** -- methodパラメータに対応するWIN32OLE_METHODのインスタンス。
- **raise** `WIN32OLERuntimeError` -- methodパラメータで指定したメソッドが見つかりません。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Workbook')
method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
```
