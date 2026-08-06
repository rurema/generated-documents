# WIN32OLE_TYPELIB#library_name

### def library_name -> String

TypeLibのヘルプファイル用ドキュメント文字列からTypeLibの名前を取得します。

- **return** -- TypeLibの名前を文字列で返します。
- **raise** `WIN32OLERuntimeError` -- ドキュメント文字列が取得できなかった場合に通知します。

```ruby
tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 14.0 Object Library')
p tlib.library_name # => Excel
```
