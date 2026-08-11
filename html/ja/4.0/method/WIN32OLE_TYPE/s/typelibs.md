# WIN32OLE_TYPE.typelibs

### def WIN32OLE_TYPE.typelibs -> [String]

システムに登録されているすべてのTypeLibのドキュメント文字列を取得します。

- **return** -- システムに登録されているすべてのTypeLibのドキュメント文字列の配列を返します。

Ruby-1.9.1からは、すべてのTypeLibのドキュメント文字列を取得するには、
[WIN32OLE_TYPELIB](../../../class/WIN32OLE_TYPELIB.md)オブジェクトを利用して、以下のように記述してください。

```ruby
WIN32OLE_TYPELIB.typelibs.map {|t| t.name}
```
