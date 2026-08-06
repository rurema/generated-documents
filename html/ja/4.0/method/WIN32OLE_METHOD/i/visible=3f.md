# WIN32OLE_METHOD#visible?

### def visible? -> bool

このメソッドがクライアントに対して公開されているか（可視性を持つか）どうかを返します。

- **return** -- メソッドが公開されていれば真。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Workbooks')
method = WIN32OLE_METHOD.new(tobj, 'Add')
puts method.visible? # => true
```
