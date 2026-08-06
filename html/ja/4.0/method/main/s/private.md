# main.private

### def private() -> nil
### def private(name) -> String | Symbol
### def private(*name) -> Array
### def private(names) -> Array

メソッドを private に設定します。

引数が与えられた時には引数によって指定されたメソッドを private に設定します。

引数なしのときは今後このクラスまたはモジュール定義内で新規に定義されるメソッドを関数形式でだけ呼び出せるように(private)設定します。

- **param** `name` --  0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を指定します。
- **param** `names` -- 0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を [Array](../../../class/Array.md) で指定します。

- **raise** `NameError` -- 存在しないメソッド名を指定した場合に発生します。


- **SEE** [Module#private](../../../method/Module/i/private.md)
