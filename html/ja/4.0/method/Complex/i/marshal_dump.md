# Complex#marshal_dump

### def marshal_dump -> Array

[Marshal?.load](../../../method/Marshal/m/load.md) のためのメソッドです。
Complex::compatible#marshal_load で復元可能な配列を返します。

2.0 以降では [Marshal?.load](../../../method/Marshal/m/load.md) で 1.8 系の [Complex](../../../class/Complex.md) オブジェクトを保存した文字列も復元できます。

[注意] Complex::compatible は通常の方法では参照する事ができません。
