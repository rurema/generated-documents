# WIN32OLE_RECORD.new

### def WIN32OLE_RECORD.new(typename, obj) -> WIN32OLE_RECORD

WIN32OLE_RECORDオブジェクトを生成します。

- **param** `typename` -- 構造体名を文字列またはシンボルで指定します。
- **param** `obj` -- [WIN32OLE](../../../class/WIN32OLE.md)オブジェクトまたは[WIN32OLE_TYPELIB](../../../class/WIN32OLE_TYPELIB.md)オブジェ
           クトを指定します。typenameで指定した構造体の型情報を取得する
           ために利用します。
- **return** -- 生成したWIN32OLE_RECORDオブジェクトを返します。

- **raise** `ArgumentError` -- typenameがStringまたはSymbolではありません。あるいは
                obj がWIN32OLEオブジェクトまたはWIN32OLE_TYPELIBオブジェク
                トのいずれでもありません。

- **raise** `WIN32OLERuntimeError` -- objからITypeLibインタフェースの取得に失
                            敗しました。あるいはtypenameに対応する
                            IRecordInfoインタフェースの取得に失敗し
                            ました。

VB.NETのComServerプロジェクトで、以下のBook構造体を持つCOMサーバがあるとします。

```text
Imports System.Runtime.InteropServices
Public Class ComClass
    Public Structure Book
        <MarshalAs(UnmanagedType.BStr)> _
        Public title As String
        Public cost As Integer
    End Structure
End Class
```

このとき、次のようにしてWIN32OLE_RECORDオブジェクトを生成できます。

```ruby title="例"
require 'win32ole'
obj = WIN32OLE.new('ComServer.ComClass')
book1 = WIN32OLE_RECORD.new('Book', obj) # => WIN32OLE_RECORDオブジェクト
tlib = obj.ole_typelib
book2 = WIN32OLE_RECORD.new('Book', tlib) # => WIN32OLE_RECORDオブジェクト
```
