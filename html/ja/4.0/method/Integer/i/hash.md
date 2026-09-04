# Integer#hash

### def hash -> Integer
{: since=""}

self のハッシュ値を返します。

eql? で等しい整数は、常にハッシュ値も等しくなります。

[Integer](../../../class/Integer.md) のインスタンスは、[Hash](../../../class/Hash.md) のキーとして使われるとき Ruby 内部の
組み込みのハッシュ関数でハッシュ値が計算されます。そのため、この hash メソッドを
再定義しても Hash のキーとしての振る舞いは変わりません。

- **SEE** [Object#hash](../../../method/Object/i/hash.md)
