# class WIN32OLE < Object

OLEオートメーションサーバをRubyで操作するためのクラスです。

Windowsの多くのアプリケーションやライブラリは、COMと呼ばれるAPI群を利用して他のプログラムから操作できます。WIN32OLEがサポートしているのは、
COMのAPIのうち、特にインタープリタ用のインターフェイスであるOLEオートメーション（IDispatchインターフェイス）とそれに付随するリフレクション用のインターフェイスです。

これらのインターフェイスをサポートしている代表的なWindowsアプリケーションに、Office、IE、iTunes、Illustratorがあります。また、WMI、WshShellなどのライブラリを利用してWindowsの情報を操作することも可能です。これらのプログラムをOLEオートメーションサーバと呼びます。

WIN32OLEオブジェクトは、OLEオートメーションサーバが提供するメソッドやプロパティ（Rubyの属性に対応）をスクリプトから呼び出す手段を提供します。
呼び出しには、Rubyのオブジェクトと同様にオブジェクトに続けて「.」とメソッド名、必要であれば引数のリストを記述します。最後の引数にHashを指定した場合は、名前付き引数としてキーにパラメータ名、値に引数を指定できます。

### サンプルコード

```ruby
require 'win32ole'

excel = WIN32OLE.new('Excel.Application')
workbook = excel.Workbooks.Open('workbook.xls')
workbook.PrintOut
workbook.Close(:SaveChanges => false)
excel.Quit
```

なお、OLEオートメーションの仕様ではメソッド名は大文字と小文字を区別しません。そのため、以下のようにOLEオートメーションサーバのメソッド名は小文字で記述しても構いません。

```ruby
require 'win32ole'

excel = WIN32OLE.new('Excel.Application')
workbook = excel.workbooks.open('workbook.xls')
workbook.printout
workbook.close(:SaveChanges => false)
excel.quit
```

### マルチスレッドでの利用制限

注）以下の記述はWIN32OLEの将来のバージョンの仕様を規定するものではありません。

WIN32OLEはシングルスレッドモードでCOMとインターフェイスします。このため、
Ruby 1.9 以降のRubyのThreadとネイティブスレッドが1対1で対応する実行環境ではスレッドをまたがる呼び出しはエラーとなります。

```ruby
excel = WIN32OLE.new('Excel.Application')
Thread.start do
  workbook = excel.Workbooks.Open('workbook.xls') # => HRESULT error code:0x800401f0
  workbook.PrintOut
  workbook.Close(:SaveChanges => false)
end.join
excel.Quit
```

発生するエラーはThreadの実行方法によって
0x800401f0（CO_E_NOTINITIALIZED）または0x8001010e（RPC_E_WRONG_THREAD）です。

## Class Methods

- [codepage](../method/WIN32OLE/s/codepage.md)
- [codepage=](../method/WIN32OLE/s/codepage=3d.md)
- [connect](../method/WIN32OLE/s/connect.md)
- [const_load](../method/WIN32OLE/s/const_load.md)
- [create_guid](../method/WIN32OLE/s/create_guid.md)
- [locale](../method/WIN32OLE/s/locale.md)
- [locale=](../method/WIN32OLE/s/locale=3d.md)
- [new](../method/WIN32OLE/s/new.md)
- [ole_free](../method/WIN32OLE/s/ole_free.md)
- [ole_reference_count](../method/WIN32OLE/s/ole_reference_count.md)
- [ole_show_help](../method/WIN32OLE/s/ole_show_help.md)

## Instance Methods

- [\[\]](../method/WIN32OLE/i/=5b=5d.md)
- [\[\]=](../method/WIN32OLE/i/=5b=5d=3d.md)
- [_getproperty](../method/WIN32OLE/i/_getproperty.md)
- [_invoke](../method/WIN32OLE/i/_invoke.md)
- [_setproperty](../method/WIN32OLE/i/_setproperty.md)
- [each](../method/WIN32OLE/i/each.md)
- [invoke](../method/WIN32OLE/i/invoke.md)
- [method_missing](../method/WIN32OLE/i/method_missing.md)
- [ole_activex_initialize](../method/WIN32OLE/i/ole_activex_initialize.md)
- [ole_free](../method/WIN32OLE/i/ole_free.md)
- [ole_func_methods](../method/WIN32OLE/i/ole_func_methods.md)
- [ole_get_methods](../method/WIN32OLE/i/ole_get_methods.md)
- [ole_method](../method/WIN32OLE/i/ole_method.md)
- [ole_method_help](../method/WIN32OLE/i/ole_method_help.md)
- [ole_methods](../method/WIN32OLE/i/ole_methods.md)
- [ole_obj_help](../method/WIN32OLE/i/ole_obj_help.md)
- [ole_type](../method/WIN32OLE/i/ole_type.md)
- [ole_put_methods](../method/WIN32OLE/i/ole_put_methods.md)
- [ole_query_interface](../method/WIN32OLE/i/ole_query_interface.md)
- [ole_respond_to?](../method/WIN32OLE/i/ole_respond_to=3f.md)
- [ole_typelib](../method/WIN32OLE/i/ole_typelib.md)
- [setproperty](../method/WIN32OLE/i/setproperty.md)

## Constants

- [ARGV](../method/WIN32OLE/c/ARGV.md)
- [CP_ACP](../method/WIN32OLE/c/CP_ACP.md)
- [CP_MACCP](../method/WIN32OLE/c/CP_MACCP.md)
- [CP_OEMCP](../method/WIN32OLE/c/CP_OEMCP.md)
- [CP_SYMBOL](../method/WIN32OLE/c/CP_SYMBOL.md)
- [CP_THREAD_ACP](../method/WIN32OLE/c/CP_THREAD_ACP.md)
- [CP_UTF7](../method/WIN32OLE/c/CP_UTF7.md)
- [CP_UTF8](../method/WIN32OLE/c/CP_UTF8.md)
- [LOCALE_SYSTEM_DEFAULT](../method/WIN32OLE/c/LOCALE_SYSTEM_DEFAULT.md)
- [LOCALE_USER_DEFAULT](../method/WIN32OLE/c/LOCALE_USER_DEFAULT.md)
- [VERSION](../method/WIN32OLE/c/VERSION.md)
