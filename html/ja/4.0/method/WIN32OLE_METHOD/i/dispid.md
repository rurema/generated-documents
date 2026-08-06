# WIN32OLE_METHOD#dispid

### def dispid -> Integer

メソッドのディスパッチID（DISPID）を取得します。

ディスパッチIDはメソッドの一意識別子です。WIN32OLEでは、
[WIN32OLE#_invoke](../../../method/WIN32OLE/i/_invoke.md)などのメソッドで、呼び出すサーバのメソッドを指定するのに利用します。

- **return** -- メソッドのDISPIDを返します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Workbooks')
method = WIN32OLE_METHOD.new(tobj, 'Add')
puts method.dispid # => 181
```

- **SEE** [WIN32OLE#_invoke](../../../method/WIN32OLE/i/_invoke.md), [WIN32OLE#_getproperty](../../../method/WIN32OLE/i/_getproperty.md),
     [WIN32OLE#_setproperty](../../../method/WIN32OLE/i/_setproperty.md)
