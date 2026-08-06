# WIN32OLE_METHOD#event?

### def event? -> bool

メソッドがイベントかどうかを取得します。

イベントとはこのサーバが実装しているメソッドではなく、クライアント側がサーバ側の通知を受けるために実装するメソッドです。

- **return** -- メソッドがイベントであれば真。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Workbook')
method = WIN32OLE_METHOD.new(tobj, 'SheetActivate')
puts method.event? # => true
```

- **SEE** [WIN32OLE_EVENT](../../../class/WIN32OLE_EVENT.md)
