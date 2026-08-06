# Hash#delete

### def delete(key) -> object | nil
### def delete(key) {|key| ... } -> object

key に対応する要素を取り除きます。

- **param** `key` -- 取り除くキーを指定します。

- **return** -- 取り除かれた要素の値を返します。
        key に対応する要素が存在しない時には nil を返します。

```text
与えられたブロックは key にマッチする要素がなかった時に評価され、その結果を返します。
```

```ruby title="例"
h = {:ab => "some" , :cd => "all"}

p h.delete(:ab) #=> "some"
p h.delete(:ef) #=> nil
p h.delete(:ef){|key|"#{key} Nothing"} #=> "ef Nothing"

p h #=> {:cd=>"all"}
```

- **SEE** [Hash#delete_if](../../../method/Hash/i/delete_if.md)
