# Array#reject!

### def reject! {|x| ... }      -> self | nil
### def reject!                 -> Enumerator

要素を順番にブロックに渡して評価し、その結果が真になった要素をすべて削除します。
要素が 1 つ以上削除されれば self を、1 つも削除されなければ nil を返します。

ブロックが与えられなかった場合は、自身と reject! から生成した
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。
返された Enumerator オブジェクトの each メソッドには、もとの配列に対して副作用があることに注意してください。

```ruby title="例"
a = [0, 1, 2, 3, 4, 5]
p a.reject!{|x| x % 2 == 0}  # => [1, 3, 5]
p a.reject!{|x| x % 2 == 0}  # => nil

a = [0, 1, 2, 3, 4, 5]
e = a.reject!
e.each{|i| i % 2 == 0}
p a                    # => [1, 3, 5]  もとの配列から削除されていることに注意。
```

- **SEE** [Array#delete_if](../../../method/Array/i/delete_if.md), [Array#select!](../../../method/Array/i/select=21.md), [Array#keep_if](../../../method/Array/i/keep_if.md)
