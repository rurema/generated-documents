# Array#rindex

### def rindex(val)           -> Integer | nil
### def rindex {|item| ... }  -> Integer | nil
### def rindex                -> Enumerator

指定された val と == で等しい最後の要素の位置を返します。
等しい要素がひとつもなかった時には nil を返します。

ブロックが与えられた時には、各要素を右(末尾)から順に引数としてブロックを実行し、ブロックが真を返す最初の要素の位置を返します。
ブロックが真を返す要素がなかった時には nil を返します。

引数、ブロックのどちらも与えられなかった時には、自身と rindex から生成した
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

- **param** `val` -- オブジェクトを指定します。

```ruby title="例"
p [1, 0, 0, 1, 0].rindex(1)   # => 3
p [1, 0, 0, 0, 0].rindex(1)   # => 0
p [0, 0, 0, 0, 0].rindex(1)   # => nil
p [0, 1, 0, 1, 0].rindex {|v| v > 0}   # => 3
```

- **SEE** [Array#index](../../../method/Array/i/index.md)
