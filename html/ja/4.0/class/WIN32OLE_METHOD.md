# class WIN32OLE_METHOD < Object

OLEオートメーションサーバが持つメソッドの情報を提供します。

WIN32OLE_METHODは、[WIN32OLE#ole_methods](../method/WIN32OLE/i/ole_methods.md)などの呼び出しによって返されるオブジェクトで、OLEオートメーションサーバのメソッドの情報（メタデータ）を保持します。

Ruby 3.2 から、このクラスは WIN32OLE の名前空間下に移動し、`WIN32OLE::Method`
として定義されるようになりました。トップレベル定数 `WIN32OLE_METHOD` は後方互換のためのエイリアスとして残っていますが、Ruby 3.4 以降は非推奨
(deprecated)です(`Warning[:deprecated]` が有効なら参照時に警告が表示されます)。

### サンプルコード

```ruby
  excel = WIN32OLE.new('Excel.Application')
  excel.ole_methods.each do |method|
    if method.visible?
      puts <<SIGNATURE
#{method.return_type} #{method.name}(#{
    method.params.map {|p| "#{p.ole_type} #{p.name}"}.join(', ')
}) : #{method.helpstring}
SIGNATURE
    end
  end
```

- **SEE** [WIN32OLE#ole_methods](../method/WIN32OLE/i/ole_methods.md), [WIN32OLE#ole_func_methods](../method/WIN32OLE/i/ole_func_methods.md), [WIN32OLE#ole_get_methods](../method/WIN32OLE/i/ole_get_methods.md), [WIN32OLE#ole_put_methods](../method/WIN32OLE/i/ole_put_methods.md), [WIN32OLE#ole_method](../method/WIN32OLE/i/ole_method.md), [WIN32OLE#ole_method_help](../method/WIN32OLE/i/ole_method_help.md), [WIN32OLE_PARAM](../class/WIN32OLE_PARAM.md)

## Class Methods

- [new](../method/WIN32OLE_METHOD/s/new.md)

## Instance Methods

- [dispid](../method/WIN32OLE_METHOD/i/dispid.md)
- [event?](../method/WIN32OLE_METHOD/i/event=3f.md)
- [event_interface](../method/WIN32OLE_METHOD/i/event_interface.md)
- [helpcontext](../method/WIN32OLE_METHOD/i/helpcontext.md)
- [helpfile](../method/WIN32OLE_METHOD/i/helpfile.md)
- [helpstring](../method/WIN32OLE_METHOD/i/helpstring.md)
- [invkind](../method/WIN32OLE_METHOD/i/invkind.md)
- [invoke_kind](../method/WIN32OLE_METHOD/i/invoke_kind.md)
- [name](../method/WIN32OLE_METHOD/i/name.md)
- [to_s](../method/WIN32OLE_METHOD/i/to_s.md)
- [offset_vtbl](../method/WIN32OLE_METHOD/i/offset_vtbl.md)
- [params](../method/WIN32OLE_METHOD/i/params.md)
- [return_type](../method/WIN32OLE_METHOD/i/return_type.md)
- [return_type_detail](../method/WIN32OLE_METHOD/i/return_type_detail.md)
- [return_vtype](../method/WIN32OLE_METHOD/i/return_vtype.md)
- [size_opt_params](../method/WIN32OLE_METHOD/i/size_opt_params.md)
- [size_params](../method/WIN32OLE_METHOD/i/size_params.md)
- [visible?](../method/WIN32OLE_METHOD/i/visible=3f.md)
