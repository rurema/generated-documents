# module Warning

警告を出力するためのモジュールです。

本モジュールは warn インスタンスメソッドのみで構成されます。しかし、本モジュールは自身を extend するため、.warn メソッドも利用可能です。warn メソッドは Ruby が出力する全ての警告に対して呼び出されます。デフォルトでは全ての警告が [m:$stderr] に出力されます。

[Warning.warn](../method/Warning/s/warn.md) をオーバーライドする事で Ruby から出力される警告の動作を変更する事ができます。例えばエラーメッセージのフィルタリングや、[m:$stderr] 以外に警告を出力といった変更が可能です。[Warning.warn](../method/Warning/s/warn.md) をオーバーライドする際は super を呼び出すとデフォルトの動作である [m:$stderr] への出力ができます。

## Class Methods

- [\[\]](../method/Warning/s/=5b=5d.md)
- [\[\]=](../method/Warning/s/=5b=5d=3d.md)
- [categories](../method/Warning/s/categories.md)
- [warn](../method/Warning/s/warn.md)

## Instance Methods

- [warn](../method/Warning/i/warn.md)
