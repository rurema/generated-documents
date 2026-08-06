# WIN32OLE#ole_get_methods

### def ole_get_methods -> [WIN32OLE_METHOD]

オブジェクトの参照可能プロパティ情報を[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列として返します。

ole_get_methodsメソッドは、OLEオートメーションサーバのメソッドのうち読み取り可能なプロパティを[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列として返します。

- **return** -- [WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列。
- **raise** `WIN32OLERuntimeError` -- オートメーションサーバの呼び出しに失敗しました。
                            型情報ライブラリ(TypeLib)が提供されていない場合などに発生します。

```ruby
excel = WIN32OLE.new('Excel.Application')
excel.ole_get_methods.each do |prop|
  begin
    puts "#{prop.name}=#{excel._getproperty(prop.dispid, [], [])}"
  rescue WIN32OLERuntimeError
    puts "can't read #{prop.name} property"
  end
end
```

- **SEE** [WIN32OLE#ole_methods](../../../method/WIN32OLE/i/ole_methods.md), [WIN32OLE#ole_func_methods](../../../method/WIN32OLE/i/ole_func_methods.md),
     [WIN32OLE#ole_put_methods](../../../method/WIN32OLE/i/ole_put_methods.md)
