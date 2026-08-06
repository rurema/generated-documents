# WIN32OLE_RECORD#ole_instance_variable_set

### def ole_instance_variable_set(name, val) -> object

VT_RECORD OLE変数のメンバ名に対応する値を設定します。メンバ名が正しくない場合は[KeyError](../../../class/KeyError.md)が発生します。

[WIN32OLE_RECORD#method_missing](../../../method/WIN32OLE_RECORD/i/method_missing.md)経由でメンバの値を直接設定できない場合に利用します。

- **param** `name` -- 設定するメンバ名を文字列またはシンボルで指定します。
- **param** `val` -- 設定する値を指定します。
- **return** -- 設定した値を返します。

- **raise** `TypeError` -- nameがStringまたはSymbolではありません。
- **raise** `KeyError` -- 指定したメンバ名がselfに存在しません。

VB.NETのComServerプロジェクトで作成したCOMサーバの以下のBook構造体の
titleメンバに値を設定するには、次のようにします。

```text
Imports System.Runtime.InteropServices
Public Class ComClass
    <MarshalAs(UnmanagedType.BStr)> _
    Public title As String
    Public cost As Integer
End Class
```

```ruby title="例"
server = WIN32OLE.new('ComServer.ComClass')
obj = WIN32OLE_RECORD.new('Book', server)
obj.ole_instance_variable_set(:title, "The Ruby Book")
```

- **SEE** [WIN32OLE_RECORD#method_missing](../../../method/WIN32OLE_RECORD/i/method_missing.md), [WIN32OLE_RECORD#ole_instance_variable_get](../../../method/WIN32OLE_RECORD/i/ole_instance_variable_get.md)
