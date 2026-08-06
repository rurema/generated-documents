# WIN32OLE_TYPE#ole_methods

### def ole_methods -> [WIN32OLE_METHOD]

型が持つメソッドのメタデータを取得します。

- **return** -- 型が持つメソッドのメタデータを[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)の配列として返します。
        メソッドを持たない場合は空配列を返します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Worksheet')
methods = tobj.ole_methods.map {|m| m.name }
                     # => ['QueryInterface', 'AddRef', 'Release',....]
```

- **SEE** [WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)
