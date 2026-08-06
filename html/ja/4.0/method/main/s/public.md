# main.public

### def public() -> nil
### def public(name) -> String | Symbol
### def public(*name) -> Array
### def public(names) -> Array

メソッドを public に設定します。

引数なしのときは今後このクラスまたはモジュール定義内で新規に定義されるメソッドをどんな形式でも呼び出せるように(public)設定します。

引数が与えられた時には引数によって指定されたメソッドを public に設定します。

- **param** `name` --  0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を指定します。
- **param** `names` -- 0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を [Array](../../../class/Array.md) で指定します。

- **raise** `NameError` -- 存在しないメソッド名を指定した場合に発生します。


- **SEE** [Module#public](../../../method/Module/i/public.md)
