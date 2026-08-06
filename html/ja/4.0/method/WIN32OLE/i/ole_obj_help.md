# WIN32OLE#ole_obj_help

### def ole_obj_help -> WIN32OLE_TYPE | nil
### def ole_type -> WIN32OLE_TYPE | nil

[WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)オブジェクトを返します。

[WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)オブジェクトは、WIN32OLEオブジェクトの文書情報と型情報を保持するオブジェクトです。

- **return** -- オブジェクトに関連する[WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)オブジェクトを返します。
        オブジェクトがドキュメント情報を持たない場合はnilを返します。

```ruby
excel = WIN32OLE.new('Excel.Application')
tobj = excel.ole_obj_help
```

- **SEE** [WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)
