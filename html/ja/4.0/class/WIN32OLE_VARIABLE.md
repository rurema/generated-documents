# class WIN32OLE_VARIABLE < Object

OLEオートメーションの変数情報をRubyで参照するためのクラスです。

OLEオートメーションサーバは、定数（[WIN32OLE.const_load](../method/WIN32OLE/s/const_load.md)）、メソッド/プロパティ（[WIN32OLE_METHOD](../class/WIN32OLE_METHOD.md)）、イベント（[WIN32OLE_EVENT](../class/WIN32OLE_EVENT.md)）のほかに変数をクライアントへ提供できます。WIN32OLE_VARIABLEクラスは、サーバが提供する変数の情報をオブジェクト化します。変数情報にはCOMで決められた構造体やユーザ定義型のフィールド情報などがありますが、最も良く利用されるのはenum（列挙型）のメンバ情報です。enumのメンバは定数として利用できます。

WIN32OLE_VARIABLEのオブジェクトは、[WIN32OLE_TYPE#variables](../method/WIN32OLE_TYPE/i/variables.md)メソッドを利用して取得します。

Ruby 3.2 から、このクラスは WIN32OLE の名前空間下に移動し、`WIN32OLE::Variable`
として定義されるようになりました。トップレベル定数 `WIN32OLE_VARIABLE` は後方互換のためのエイリアスとして残っていますが、Ruby 3.4 以降は非推奨
(deprecated)です(`Warning[:deprecated]` が有効なら参照時に警告が表示されます)。

### サンプルコード

```ruby
require 'win32ole'

tobj = WIN32OLE_TYPE.new('Microsoft Excel 14.0 Object Library', 'XlSheetType')
variables = tobj.variables
variables.each do |variable|
  puts "#{variable.name}=#{variable.value}"
end
```

実行結果は以下となります。

```ruby
xlChart=-4109
xlDialogSheet=-4116
xlExcel4IntlMacroSheet=4
xlExcel4MacroSheet=3
xlWorksheet=-4167
```

- **SEE** [WIN32OLE_TYPE#variables](../method/WIN32OLE_TYPE/i/variables.md)

## Instance Methods

- [name](../method/WIN32OLE_VARIABLE/i/name.md)
- [to_s](../method/WIN32OLE_VARIABLE/i/to_s.md)
- [ole_type](../method/WIN32OLE_VARIABLE/i/ole_type.md)
- [ole_type_detail](../method/WIN32OLE_VARIABLE/i/ole_type_detail.md)
- [value](../method/WIN32OLE_VARIABLE/i/value.md)
- [variable_kind](../method/WIN32OLE_VARIABLE/i/variable_kind.md)
- [varkind](../method/WIN32OLE_VARIABLE/i/varkind.md)
- [visible?](../method/WIN32OLE_VARIABLE/i/visible=3f.md)
