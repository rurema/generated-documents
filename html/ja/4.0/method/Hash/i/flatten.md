# Hash#flatten

### def flatten(level = 1) -> Array

自身を平坦化した配列を生成して返します。

全てのキーと値を新しい配列の要素として展開します。
[Array#flatten](../../../method/Array/i/flatten.md) と違って、デフォルトではこのメソッドは自身を再帰的に平坦化しません。level を指定すると指定されたレベルまで再帰的に平坦化します。

- **param** `level` -- 展開するレベル

```ruby title="例"
a =  {1=> "one", 2 => [2,"two"], 3 => "three"}
p a.flatten   # => [1, "one", 2, [2, "two"], 3, "three"]
p a.flatten(1)  # => [1, "one", 2, [2, "two"], 3, "three"]
p a.flatten(2)  # => [1, "one", 2, 2, "two", 3, "three"]
p a.flatten(0)  # => [[1, "one"], [2, [2, "two"]], [3, "three"]]
p a.flatten(-1) # => [1, "one", 2, 2, "two", 3, "three"]
```

- **SEE** [Array#flatten](../../../method/Array/i/flatten.md)
