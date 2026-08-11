# Array#rotate!

### def rotate!(cnt = 1) -> self

cnt で指定したインデックスの要素が先頭になるように自身の順番を変更します。cnt より前の要素は末尾に移動します。cnt に負の数を指定した場合、逆の操作を行います。

- **param** `cnt` -- 先頭にする要素のインデックスを指定します。指定しなかった場合は 1 になります。
           整数以外のオブジェクトを指定した場合は to_int メソッドによる暗黙の型変換を試みます。

- **raise** `TypeError` -- 引数に整数以外の(暗黙の型変換が行えない)オブジェクトを指定した場合に発生します。

```ruby title="例"
a = [ "a", "b", "c", "d" ]
p a.rotate!      # => ["b", "c", "d", "a"]
p a              # => ["b", "c", "d", "a"]
p a.rotate!(2)   # => ["d", "a", "b", "c"]
p a.rotate!(-3)  # => ["a", "b", "c", "d"]
```

- **SEE** [Array#rotate](../../../method/Array/i/rotate.md)
