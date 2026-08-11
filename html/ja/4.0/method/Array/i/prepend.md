# Array#prepend

### def unshift(*obj)        -> self
### def prepend(*obj)        -> self

指定された obj を引数の最後から順番に配列の先頭に挿入します。
引数を指定しなければ何もしません。

- **param** `obj` -- 自身に追加したいオブジェクトを指定します。

```ruby title="例"
arr = [1,2,3]
arr.unshift 0
p arr             # => [0, 1, 2, 3]
arr.unshift [0]
p arr             # => [[0], 0, 1, 2, 3]
arr.unshift 1, 2
p arr             # => [1, 2, [0], 0, 1, 2, 3]
```

- **SEE** [Array#push](../../../method/Array/i/push.md), [Array#pop](../../../method/Array/i/pop.md), [Array#shift](../../../method/Array/i/shift.md)
