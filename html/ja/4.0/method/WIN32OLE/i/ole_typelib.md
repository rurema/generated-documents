# WIN32OLE#ole_typelib

### def ole_typelib -> WIN32OLE_TYPELIB

オブジェクトに対応する型情報ライブラリ（TypeLib）を
[WIN32OLE_TYPELIB](../../../class/WIN32OLE_TYPELIB.md)として返します。

OLEオートメーションではクラス、インターフェイス、メソッド、引数などの型情報と文書情報を型情報ライブラリとして利用します。型情報ライブラリは独立したファイル（拡張子tlb）の場合もあれば、オブジェクトのバイナリへリソースとして埋め込まれている場合があります。

OLEオートメーションでは型情報ライブラリの提供方法を問わずに統一したインターフェイスでアプリケーションが参照できるように、オブジェクトの形式（ITypeInfoインターフェイス）で提供します。WIN32OLEは、このオブジェクトをラップして[WIN32OLE_TYPELIB](../../../class/WIN32OLE_TYPELIB.md)として提供します。

- **return** -- オブジェクトに対応する[WIN32OLE_TYPELIB](../../../class/WIN32OLE_TYPELIB.md)オブジェクト。
- **raise** `WIN32OLERuntimeError` -- オートメーションサーバの呼び出しに失敗しました。
                            型情報ライブラリ(TypeLib)が提供されていない場合などに発生します。

```ruby
excel = WIN32OLE.new('Excel.Application')
tlib = excel.ole_typelib
puts tlib.name  # => 'Microsoft Excel 9.0 Object Library'
```
