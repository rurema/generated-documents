# WIN32OLE.ole_show_help

### def WIN32OLE.ole_show_help(obj, helpcontext = nil) -> ()

WIN32OLEオブジェクトのヘルプファイルを表示します。

Windows標準のヘルプ表示コンポーネントのHHCtrl.OCXを利用して、オブジェクトに関連付けられたヘルプファイル（chmファイル）を表示します。

また、chmファイルのフルパス名を指定して表示させることも可能です。

- **param** `obj` -- [WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)オブジェクトまたは[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)オ
           ブジェクト。直接ヘルプファイルのフルパス名を指定することも可
           能です。

- **param** `helpcontext` -- obj引数に[WIN32OLE_TYPE](../../../class/WIN32OLE_TYPE.md)オブジェクトまたは
                  [WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)オブジェクトを指定した場合は、こ
                  れらのオブジェクトの設定値を利用するため指定不要です。
                  obj引数にヘルプファイルのフルパス名を設定した場合は
                  0を指定してください。

- **raise** `RuntimeError` -- オブジェクトが関連するヘルプファイルを持たない場合
                    (no helpfile of `オブジェクト名`) や、ヘルプファイル
                    がインストールされていない場合 (failed to open
                    help file `ファイル名`) に通知します。

```ruby
excel = WIN32OLE.new('Excel.Application')
typeobj = excel.ole_obj_help
WIN32OLE.ole_show_help(typeobj) if typeobj.helpfile
```
