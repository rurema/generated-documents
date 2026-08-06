# class WIN32OLE_VARIANT < Object

OLEオートメーションの標準型のVARIANTオブジェクトをRubyで利用するためのクラスです。

VARIANT型とは、型情報と値のペアから構成されるデータ型で、元はVBの型無し変数のための構造体です。OLEオートメーションのメソッド呼び出しには汎用型として引数にはVARIANT型を利用します。

- 型情報は、[WIN32OLE_VARIANT#vartype](../method/WIN32OLE_VARIANT/i/vartype.md)で取得できます。
- 値は、[WIN32OLE_VARIANT#value](../method/WIN32OLE_VARIANT/i/value.md)で取得できます。

OLEオートメーションのメソッド呼び出し規約では、引数はVARIANT型の配列として定義されています。

この規約に対して、WIN32OLEでは、VARIANT型の値に対する参照を引数配列の各要素に設定します。この実装は、ほとんどのOLEオートメーションサーバで正しく処理されます。

しかし、一部のOLEオートメーションサーバは、引数配列の要素にVARIANT型の値そのものを要求します。この場合、WIN32OLEの実装は正しく処理されません。

WIN32OLE_VARIANTオブジェクトを利用すると、このようなOLEオートメーションサーバのメソッド呼び出しに対して、VARIANT型の値を引数配列に設定することをWIN32OLEへ指示できます。

なお、WIN32OLE_VARIANTを利用する必要の有無は、呼び出し対象のOLEオートメーションサーバの仕様または実装に依存します。

Ruby 3.2 から、このクラスは WIN32OLE の名前空間下に移動し、`WIN32OLE::Variant`
として定義されるようになりました。トップレベル定数 `WIN32OLE_VARIANT` は後方互換のためのエイリアスとして残っていますが、Ruby 3.4 以降は非推奨
(deprecated)です(`Warning[:deprecated]` が有効なら参照時に警告が表示されます)。

### サンプルコード

```ruby
shell = WIN32OLE.new('Shell.Application')
folder = shell.NameSpace('C:\\Users\\Public\\Documents')
item = folder.ParseName('test.txt')
v = WIN32OLE_VARIANT.new('Delete')
p item.invokeVerb(v)   # => ゴミ箱への移動ダイアログを表示
```

上記サンプルの最後の行を

```ruby
item.invokeVerb('Delete')
```

とすると、FolderItemオブジェクトは引数を認識できず、既定の動作として
Openを実行します。

プログラムの見た目と異なり、後者のコードに対してWIN32OLEは、'Delete'という文字列を格納したVARIANT型への参照を引数として与えるためです。それに対して前者では、'Delete'という文字列を格納したVARIANT型を引数として与えます。

## Class Methods

- [array](../method/WIN32OLE_VARIANT/s/array.md)
- [new](../method/WIN32OLE_VARIANT/s/new.md)

## Instance Methods

- [\[\]](../method/WIN32OLE_VARIANT/i/=5b=5d.md)
- [\[\]=](../method/WIN32OLE_VARIANT/i/=5b=5d=3d.md)
- [value](../method/WIN32OLE_VARIANT/i/value.md)
- [value=](../method/WIN32OLE_VARIANT/i/value=3d.md)
- [vartype](../method/WIN32OLE_VARIANT/i/vartype.md)

## Constants

- [Empty](../method/WIN32OLE_VARIANT/c/Empty.md)
- [Nothing](../method/WIN32OLE_VARIANT/c/Nothing.md)
- [Null](../method/WIN32OLE_VARIANT/c/Null.md)
