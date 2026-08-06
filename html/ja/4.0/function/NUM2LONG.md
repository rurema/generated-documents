# NUM2LONG

### long NUM2LONG(VALUE x)

x を long 型の整数に変換します。

x が [Integer](../class/Integer.md)、[Float](../class/Float.md) オブジェクトのいずれでもない場合は x.to_int による暗黙の型変換を試みます。

- **raise** `TypeError` -- x が nil の場合か、暗黙の型変換が成功しなかった場合に
                 発生します。

- **raise** `RangeError` -- x が long 型で表現できる値の範囲外であった場合に発生
                  します。
