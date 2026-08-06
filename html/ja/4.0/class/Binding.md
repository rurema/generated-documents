# class Binding < Object

ローカル変数のテーブルと self、モジュールのネストなどの情報を保持するオブジェクトのクラスです。

組み込み関数 [Kernel?.binding](../method/Kernel/m/binding.md) と [Proc#binding](../method/Proc/i/binding.md) によってのみ生成され、[Kernel?.eval](../method/Kernel/m/eval.md) の第 2 引数に使用します。
またトップレベルの Binding オブジェクトとして組み込み定数
[Object::TOPLEVEL_BINDING](../method/Object/c/TOPLEVEL_BINDING.md) が用意されています。

## Instance Methods

- [eval](../method/Binding/i/eval.md)
- [implicit_parameter_defined?](../method/Binding/i/implicit_parameter_defined=3f.md)
- [implicit_parameter_get](../method/Binding/i/implicit_parameter_get.md)
- [implicit_parameters](../method/Binding/i/implicit_parameters.md)
- [irb](../method/Binding/i/irb.md)
- [local_variable_defined?](../method/Binding/i/local_variable_defined=3f.md)
- [local_variable_get](../method/Binding/i/local_variable_get.md)
- [local_variable_set](../method/Binding/i/local_variable_set.md)
- [local_variables](../method/Binding/i/local_variables.md)
- [receiver](../method/Binding/i/receiver.md)
- [source_location](../method/Binding/i/source_location.md)
