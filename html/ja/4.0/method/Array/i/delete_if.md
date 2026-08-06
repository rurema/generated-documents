# Array#delete_if

### def delete_if {|x| ... }    -> self
### def reject! {|x| ... }      -> self | nil
### def delete_if               -> Enumerator
### def reject!                 -> Enumerator

要素を順番にブロックに渡して評価し、その結果が真になった要素をすべて削除します。
delete_if は常に self を返しますが、reject! は要素が 1 つ以上削除されれば self を、
1 つも削除されなければ nil を返します。

ブロックが与えられなかった場合は、自身と reject! から生成した
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。
返された Enumerator オブジェクトの each メソッドには、もとの配列に対して副作用があることに注意してください。

```ruby title="例"
a = [0, 1, 2, 3, 4, 5]
a.delete_if{|x| x % 2 == 0}
p a #=> [1, 3, 5]

a = [0, 1, 2, 3, 4, 5]
e = a.reject!
e.each{|i| i % 2 == 0}
p a                    #=> [1, 3, 5]  もとの配列から削除されていることに注意。
```

- **SEE** [Array#select!](../../../method/Array/i/select=21.md), [Array#keep_if](../../../method/Array/i/keep_if.md)
