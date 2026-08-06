# WIN32OLE#ole_func_methods

### def ole_func_methods -> [WIN32OLE_METHOD]

オブジェクトのファンクション情報を[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列として返します。

ole_func_methodsメソッドは、OLEオートメーションサーバのメソッドのうちファンクション（何らかの機能的な操作）に属するものを[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列として返します。

- **return** -- [WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列。
- **raise** `WIN32OLERuntimeError` -- オートメーションサーバの呼び出しに失敗しました。
                            型情報ライブラリ(TypeLib)が提供されていない場合などに発生します。

```ruby
excel = WIN32OLE.new('Excel.Application')
excel.visible = true
excel.ole_func_methods.each do |fun|
  if fun.name.upcase == 'QUIT'
    excel._invoke(fun.dispid, [], [])
    break
  end
end
```

- **SEE** [WIN32OLE#ole_methods](../../../method/WIN32OLE/i/ole_methods.md), [WIN32OLE#ole_get_methods](../../../method/WIN32OLE/i/ole_get_methods.md),
     [WIN32OLE#ole_put_methods](../../../method/WIN32OLE/i/ole_put_methods.md)
