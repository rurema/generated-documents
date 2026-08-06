# WIN32OLE#ole_put_methods

### def ole_put_methods -> [WIN32OLE_METHOD]

オブジェクトの設定可能プロパティ情報を[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列として返します。

ole_put_methodsメソッドは、OLEオートメーションサーバのメソッドのうちプロパティ設定メソッドに属するものを[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列として返します。

- **return** -- [WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列。
- **raise** `WIN32OLERuntimeError` -- オートメーションサーバの呼び出しに失敗しました。
                            型情報ライブラリ(TypeLib)が提供されていない場合などに発生します。

```ruby
excel = WIN32OLE.new('Excel.Application')
properties = excel.ole_put_methods
```

- **SEE** [WIN32OLE#ole_methods](../../../method/WIN32OLE/i/ole_methods.md), [WIN32OLE#ole_func_methods](../../../method/WIN32OLE/i/ole_func_methods.md),
     [WIN32OLE#ole_get_methods](../../../method/WIN32OLE/i/ole_get_methods.md)
