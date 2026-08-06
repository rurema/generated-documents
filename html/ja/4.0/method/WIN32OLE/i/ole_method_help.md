# WIN32OLE#ole_method_help

### def ole_method(method) -> WIN32OLE_METHOD
### def ole_method_help(method) -> WIN32OLE_METHOD

メソッド名を指定して対応する[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)オブジェクトを取得します。

OLEオートメーションの仕様により、メソッド名の大文字、小文字は区別されません。

- **param** `method` -- メソッド情報を取り出す対象のメソッド名を文字列で指定します。
- **return** -- [WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)オブジェクト。
- **raise** `WIN32OLERuntimeError` -- 指定したメソッド名が未定義あるいは型情報ラ
                            イブラリ(TypeLib)が提供されていない場合など
                            に発生します。

```ruby
excel = WIN32OLE.new('Excel.Application')
method = excel.ole_method_help('Quit')
```
