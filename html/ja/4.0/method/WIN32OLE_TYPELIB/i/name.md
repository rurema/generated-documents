# WIN32OLE_TYPELIB#name

### def name -> String
### def to_s -> String

TypeLibのドキュメント文字列を取得します。

ドキュメント文字列は、コンテキストヘルプなどに利用可能なTypeLibの簡単な説明文で、通常バージョン番号を含みます。

- **return** -- TypeLibのドキュメント文字列を返します。

```ruby
tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 14.0 Object Library')
puts tlib.name # => 'Microsoft Excel 14.0 Object Library'
```
