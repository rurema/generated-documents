# Prime::PseudoPrimeGenerator#with_object

### def with_object(obj){|prime, obj| ... } -> object
### def with_object(obj) -> Enumerator

与えられた任意のオブジェクトと要素をブロックに渡して評価します。

- **param** `obj` -- 任意のオブジェクトを指定します。
- **return** -- 最初に与えられたオブジェクトを返します。
- **return** -- ブロックを与えられた場合は obj を返します。ブロックを与えられなかった場合は Enumerator を返します。

- **SEE** [Enumerator#with_object](../../../method/Enumerator/i/with_object.md)
