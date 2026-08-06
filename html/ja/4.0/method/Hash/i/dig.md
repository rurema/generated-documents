# Hash#dig

### def dig(key, ...) -> object | nil

self 以下のネストしたオブジェクトを dig メソッドで再帰的に参照して返します。途中のオブジェクトが nil であった場合は nil を返します。

- **param** `key` -- キーを任意個指定します。

```ruby title="例"
h = { foo: {bar: {baz: 1}}}

p h.dig(:foo, :bar, :baz)    # => 1
p h.dig(:foo, :zot, :xyz)    # => nil

g = { foo: [10, 11, 12] }
p g.dig(:foo, 1)             # => 11
```

- **SEE** [Array#dig](../../../method/Array/i/dig.md), [Struct#dig](../../../method/Struct/i/dig.md), [OpenStruct#dig](../../../method/OpenStruct/i/dig.md)
