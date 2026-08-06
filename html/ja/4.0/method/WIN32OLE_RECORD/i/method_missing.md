# WIN32OLE_RECORD#method_missing

### def method_missing(name, *args) -> object

VT_RECORD OLE変数のメンバ名に対応する値を取得、または設定します。

引数がnameだけの場合（`book.title`のようにgetterとして未定義メソッドが呼び出された場合）はメンバの値を取得します。引数がname、valの2つの場合（`book.title = "..."`のようにsetterとして未定義メソッドが呼び出された場合）は、nameの末尾の「=」を取り除いたメンバ名にvalを設定します。指定したメンバ名が存在しない場合は[KeyError](../../../class/KeyError.md)が発生します。

- **param** `name` -- アクセスするメンバ名に対応するメソッド名（シンボル）です。
           setterの場合は末尾に「=」が付きます。
- **param** `args` -- setterとして呼び出された場合、設定する値を1つ指定します。
           getterとして呼び出された場合は空です。
- **return** -- getterとして呼び出された場合はメンバの値、setterとして呼び出さ
           れた場合は設定した値を返します。

- **raise** `KeyError` -- 指定したメンバ名がselfに存在しません。

VB.NETのComServerプロジェクトで作成したCOMサーバの以下のBook構造体に対して、

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

値の取得・設定は次のようにメンバ名をメソッドとして呼び出すことで行います（実際には、method_missingが呼び出されます）。

```ruby title="例"
obj = WIN32OLE.new('ComServer.ComClass')
book = WIN32OLE_RECORD.new('Book', obj)
book.title # => nil ( book.method_missing(:title) が呼び出される )
book.title = "Ruby" # ( book.method_missing(:title=, "Ruby") が呼び出される )
```

- **SEE** [WIN32OLE_RECORD#ole_instance_variable_get](../../../method/WIN32OLE_RECORD/i/ole_instance_variable_get.md), [WIN32OLE_RECORD#ole_instance_variable_set](../../../method/WIN32OLE_RECORD/i/ole_instance_variable_set.md)
