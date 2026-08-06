# WIN32OLE#ole_methods

### def ole_methods -> [WIN32OLE_METHOD]

オブジェクトのメソッド情報を[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列として返します。

ole_methodsメソッドは、OLEオートメーションサーバが提供するすべてのメソッドを[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列として返します。

- **return** -- [WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列。
- **raise** `WIN32OLERuntimeError` -- オートメーションサーバの呼び出しに失敗しました。
                            型情報ライブラリ(TypeLib)が提供されていない場合などに発生します。

```ruby
excel = WIN32OLE.new('Excel.Application')
methods = excel.ole_methods
```

- **SEE** [WIN32OLE#ole_func_methods](../../../method/WIN32OLE/i/ole_func_methods.md), [WIN32OLE#ole_put_methods](../../../method/WIN32OLE/i/ole_put_methods.md)
