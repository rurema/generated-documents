# WIN32OLE_PARAM.new

### def WIN32OLE_PARAM.new(ole_method,  index) -> WIN32OLE_PARAM

メソッドとパラメータ位置を指定してWIN32OLE_PARAMのインスタンスを作成します。

アプリケーションプログラムでは、WIN32OLE_PARAMオブジェクトをnewメソッドで生成するよりも、[WIN32OLE_METHOD#params](../../../method/WIN32OLE_METHOD/i/params.md)を参照するほうが簡単です。

- **param** `ole_method` -- パラメータを取得する[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)のインスタンス。
- **param** `index` -- パラメータの位置。最左端を1とします。
- **return** -- メソッドの指定位置のパラメータの情報を持つオブジェクトを返します。
- **raise** `TypeError` -- ole_methodパラメータが[WIN32OLE_METHOD](../../../class/WIN32OLE_METHOD.md)のインスタンスではありません。
- **raise** `IndexError` -- indexパラメータが1からパラメータの数の範囲にありません。
- **raise** `RuntimeError` -- 該当メソッドのメタデータが取得できません。

```ruby
excel = WIN32OLE.new('Excel.Application')
method = excel.ole_method('Run')
param1 = WIN32OLE_PARAM.new(method, 1)
puts "#{param1.ole_type} #{param1.name}"
```
