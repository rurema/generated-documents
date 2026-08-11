# Array#replace

### def replace(another)    -> self

配列の内容を配列 another の内容で置き換えます。

- **param** `another` -- 配列を指定します。
               配列以外のオブジェクトを指定した場合は to_ary メソッドによる暗黙の型変換を試みます。

- **raise** `TypeError` -- 引数に配列以外の(暗黙の型変換が行えない)オブジェクトを指定した場合に発生します。

```ruby title="例"
a = [1, 2, 3]
a.replace [4, 5, 6]
p a                 # => [4, 5, 6]
```
