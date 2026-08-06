# Array#dig

### def dig(idx, ...) -> object | nil

self 以下のネストしたオブジェクトを dig メソッドで再帰的に参照して返します。途中のオブジェクトが nil であった場合は nil を返します。

- **param** `idx` -- インデックスを整数で任意個指定します。

```ruby title="例"
a = [[1, [2, 3]]]

p a.dig(0, 1, 1)               # => 3
p a.dig(1, 2, 3)               # => nil
a.dig(0, 0, 0)                 # ~> TypeError: Integer does not have #dig method
p [42, {foo: :bar}].dig(1, :foo) # => :bar
```

- **SEE** [Hash#dig](../../../method/Hash/i/dig.md), [Struct#dig](../../../method/Struct/i/dig.md), [OpenStruct#dig](../../../method/OpenStruct/i/dig.md)
