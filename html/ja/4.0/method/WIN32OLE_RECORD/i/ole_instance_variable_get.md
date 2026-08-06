# WIN32OLE_RECORD#ole_instance_variable_get

### def ole_instance_variable_get(name) -> object

VT_RECORD OLE変数のメンバ名に対応する値を取得します。メンバ名が正しくない場合は[KeyError](../../../class/KeyError.md)が発生します。

Rubyの[Object](../../../class/Object.md)が持つメソッドと同名のメンバを持つなど、メンバに
[WIN32OLE_RECORD#method_missing](../../../method/WIN32OLE_RECORD/i/method_missing.md)経由で直接アクセスできない場合に利用します。

- **param** `name` -- 取得するメンバ名を文字列またはシンボルで指定します。
- **return** -- 指定したメンバの値を返します。

- **raise** `TypeError` -- nameがStringまたはSymbolではありません。
- **raise** `KeyError` -- 指定したメンバ名がselfに存在しません。

VB.NETのComServerプロジェクトで作成したCOMサーバの以下のComObject構造体（[Object#object_id](../../../method/Object/i/object_id.md)と同名のメンバを持つ）に対して、

```text
Imports System.Runtime.InteropServices
Public Class ComClass
    Public Structure ComObject
        Public object_id As Integer
    End Structure
End Class
```

以下のようにすると、`obj.object_id`はRubyの[Object#object_id](../../../method/Object/i/object_id.md)を返してしまうため、代わりにole_instance_variable_getを利用します。

```ruby title="例"
server = WIN32OLE.new('ComServer.ComClass')
obj = WIN32OLE_RECORD.new('ComObject', server)
# obj.object_id はRubyのObject#object_idを返してしまう
obj.ole_instance_variable_get(:object_id) # => nil
```

- **SEE** [WIN32OLE_RECORD#method_missing](../../../method/WIN32OLE_RECORD/i/method_missing.md), [WIN32OLE_RECORD#ole_instance_variable_set](../../../method/WIN32OLE_RECORD/i/ole_instance_variable_set.md)
