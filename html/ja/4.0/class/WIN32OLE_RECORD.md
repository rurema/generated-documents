# class WIN32OLE_RECORD < Object

WIN32OLE_RECORDオブジェクトは、OLEオートメーションのVT_RECORD型の値
(構造体)を表します。OLEメソッドの呼び出し結果がVT_RECORD型の場合、
WIN32OLEはWIN32OLE_RECORDオブジェクトを返します。

Ruby 3.2 から、このクラスは WIN32OLE の名前空間下に移動し、`WIN32OLE::Record`
として定義されるようになりました。トップレベル定数 `WIN32OLE_RECORD` は後方互換のためのエイリアスとして残っていますが、Ruby 3.4 以降は非推奨
(deprecated)です(`Warning[:deprecated]` が有効なら参照時に警告が表示されます)。

### サンプルコード

たとえば、VB.NETで作成したComServerプロジェクトのCOMサーバが、以下のようにtitle（文字列）とcost（整数）の2つのフィールドを持つBook構造体を返すgetBookメソッドを持っているとします。

```text
Imports System.Runtime.InteropServices
Public Class ComClass
    Public Structure Book
        <MarshalAs(UnmanagedType.BStr)> _
        Public title As String
        Public cost As Integer
    End Structure
    Public Function getBook() As Book
        Dim book As New Book
        book.title = "The Ruby Book"
        book.cost = 20
        Return book
    End Function
End Class
```

このとき、Rubyから次のようにしてgetBookの戻り値を取得できます。

```ruby title="例"
require 'win32ole'
obj = WIN32OLE.new('ComServer.ComClass')
book = obj.getBook
book.class # => WIN32OLE::Record
book.title # => "The Ruby Book"
book.cost  # => 20
```

なお、`book.class`は常に`WIN32OLE::Record`を返します。トップレベル定数
`WIN32OLE_RECORD`は同じクラスオブジェクトへのエイリアスですが、クラス自体の名前（`WIN32OLE::Record.name`）は変わりません。

## Class Methods

- [new](../method/WIN32OLE_RECORD/s/new.md)

## Instance Methods

- [inspect](../method/WIN32OLE_RECORD/i/inspect.md)
- [method_missing](../method/WIN32OLE_RECORD/i/method_missing.md)
- [ole_instance_variable_get](../method/WIN32OLE_RECORD/i/ole_instance_variable_get.md)
- [ole_instance_variable_set](../method/WIN32OLE_RECORD/i/ole_instance_variable_set.md)
- [to_h](../method/WIN32OLE_RECORD/i/to_h.md)
- [typename](../method/WIN32OLE_RECORD/i/typename.md)
