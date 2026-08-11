# WIN32OLE_TYPE#helpcontext

### def helpcontext -> Integer | nil

この型に関連するヘルプファイルのトピックID（ヘルプコンテキスト）を取得します。

- **return** -- 型に関連するヘルプコンテキストを整数で返します。ヘルプコンテキストが登録されていない場合はnilを返します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Worksheet')
puts tobj.helpcontext # => 131185
```
