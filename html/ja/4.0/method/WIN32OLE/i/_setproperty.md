# WIN32OLE#_setproperty

### def _setproperty(dispid, args, types) -> ()

DISPIDとパラメータの型を指定してオブジェクトのプロパティを設定します。

アクセスするプロパティのインターフェイスを事前に知っている場合に、
DISPIDとパラメータの型を指定してプロパティを設定します。

このメソッドはCOMアーリーバインディングを利用することで外部プロセスサーバとのラウンドトリップを減らして処理速度を向上させることを目的としたものです。このため、DLLの形式で型情報（TypeLib）を提供しているサーバに対してはあまり意味を持ちません。

- **param** `dispid` -- プロパティのDISPID（メソッドを一意に特定する数値）を指定します。

- **param** `args` -- 引数を配列で指定します。引数の順序は最左端の引数のインデックスを0とします。プロパティに対する設定値は最右端の要素です。

- **param** `types` -- プロパティの引数の型を配列で指定します。引数の順序は最左端の引数のインデックスを0とします。型の指定には、
             [WIN32OLE::VARIANT](../../../class/WIN32OLE=3a=3aVARIANT.md)の定数を利用します。

- **raise** `WIN32OLERuntimeError` -- オートメーションサーバの呼び出しに失敗しました。
                            理由はメッセージのHRESULTを調べてください。

```ruby
DISPID_CELLS = 238
include WIN32OLE::VARIANT
excel = WIN32OLE.new('Excel.Application')
puts excel._setproperty(558,      # VisibleプロパティのDISPIDは558
                       [true], [VT_BOOL])
workbook = excel.Workbooks.Add
sheet = workbook.Worksheets[1]
sheet._setproperty(DISPID_CELLS, [1, 2, 'hello'], [VT_I2, VT_I2, VT_BSTR])
puts sheet._getproperty(DISPID_CELLS, [1, 2], [VT_I2, VT_I2]).value  # => 'hello'
workbook.Close(:SaveChanges => false)
excel.Quit
```

DISPIDは[WIN32OLE_METHOD#dispid](../../../method/WIN32OLE_METHOD/i/dispid.md)から取得できます。

- **SEE** [WIN32OLE::VARIANT](../../../class/WIN32OLE=3a=3aVARIANT.md)
