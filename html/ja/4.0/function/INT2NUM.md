# INT2NUM

### VALUE INT2NUM(int i)

任意の整数を [Integer](../class/Integer.md) に変換します。
INT2FIX と異なり、Fixnum におさまらない整数も扱えます。

```c title="例"
VALUE num = INT2NUM(42); //(Cの整数値42をRubyのオブジェクトに変換)
```
