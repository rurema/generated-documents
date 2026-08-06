# Module#protected

### def protected() -> nil
### def protected(name) -> String | Symbol
### def protected(*name) -> Array
### def protected(names) -> Array

メソッドを protected に設定します。

引数なしのときは今後このクラスまたはモジュール定義内で新規に定義されるメソッドを protected に設定します。

引数が与えられた時には引数によって指定されたメソッドを protected
に設定します。

可視性については [spec/def#limit](../../../doc/spec=2fdef.md#limit) を参照して下さい。

- **param** `name` --  0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を指定します。
- **param** `names` -- 0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を [Array](../../../class/Array.md) で指定します。

- **raise** `NameError` -- 存在しないメソッド名を指定した場合に発生します。


- **SEE** [Module#protected_method_defined?](../../../method/Module/i/protected_method_defined=3f.md)
