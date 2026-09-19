# Array#delete_if

### def delete_if {|x| ... }    -> self
### def delete_if               -> Enumerator

要素を順番にブロックに渡して評価し、その結果が真になった要素をすべて削除します。
delete_if は常に self を返します。

ブロックが与えられなかった場合は、自身と delete_if から生成した
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。
返された Enumerator オブジェクトの each メソッドには、もとの配列に対して副作用があることに注意してください。

```ruby title="例"
a = [0, 1, 2, 3, 4, 5]
a.delete_if{|x| x % 2 == 0}
p a # => [1, 3, 5]
```

- **SEE** [Array#reject!](../../../method/Array/i/reject=21.md), [Array#select!](../../../method/Array/i/select=21.md), [Array#keep_if](../../../method/Array/i/keep_if.md)
