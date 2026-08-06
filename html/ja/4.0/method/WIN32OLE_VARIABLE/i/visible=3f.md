# WIN32OLE_VARIABLE#visible?

### def visible? -> bool

変数の可視性を取得します。

- **return** -- publicアクセス可能であれば真を返します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'XlSheetType')
puts tobj.variables.map {|v| v.visible?}.uniq # => true
```
