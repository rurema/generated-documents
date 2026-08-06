# Array#append

### def push(*obj)        -> self
### def append(*obj)      -> self

指定された obj を順番に配列の末尾に追加します。
引数を指定しなければ何もしません。

- **param** `obj` -- 自身に追加したいオブジェクトを指定します。

```ruby title="例"
array = [1, 2, 3]
array.push 4
array.push [5, 6]
array.push 7, 8
p array          # => [1, 2, 3, 4, [5, 6], 7, 8]
```

- **SEE** [Array#pop](../../../method/Array/i/pop.md), [Array#shift](../../../method/Array/i/shift.md), [Array#unshift](../../../method/Array/i/unshift.md), [Array#<<](../../../method/Array/i/=3c=3c.md)
