# WIN32OLE_METHOD#return_type

### def return_type -> String

メソッドの返り値の型名を取得します。

- **return** -- 返り値の型名を示す文字列を返します。
- **raise** `WIN32OLERuntimeError` -- メソッドの型情報を取得できなかった場合に通知します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'Application')
method = WIN32OLE_METHOD.new(tobj, 'Visible')
puts method.return_type # => BOOL
```

OLEオートメーションの型名は、対応する[WIN32OLE::VARIANT](../../../class/WIN32OLE=3a=3aVARIANT.md)の定数の先頭の「VT_」を削除した名称を持ちます。

たとえば、32ビット符号付き整数であれば「I4」となります。

- **SEE** [WIN32OLE::VARIANT](../../../class/WIN32OLE=3a=3aVARIANT.md)
