# WIN32OLE_PARAM#input?

### def input? -> bool

パラメータがクライアントからサーバへ与えるものかを判定します。

OLEオートメーションのパラメータは、in（クライアントからサーバへ与える。
[WIN32OLE_PARAM#input?](../../../method/WIN32OLE_PARAM/i/input=3f.md)が真）、out（サーバがクライアントへ与える。
[WIN32OLE_PARAM#output?](../../../method/WIN32OLE_PARAM/i/output=3f.md)が真）および、inout（クライアントからサーバへ与え、サーバがクライアントへ与える）の3種類の方向属性のいずれかを持ちます。

input?メソッドはin属性またはinout属性なら真を返します。

- **return** -- メソッドの方向属性がinまたはinoutならば真を返します。

```ruby
tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
param1 = method.params[0]
puts param1.input? # => true
```

- **SEE** <http://msdn.microsoft.com/en-us/library/aa367051(v=VS.85).aspx>
