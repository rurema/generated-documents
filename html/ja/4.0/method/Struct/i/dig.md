# Struct#dig

### def dig(key, ...) -> object | nil

self 以下のネストしたオブジェクトを dig メソッドで再帰的に参照して返します。途中のオブジェクトが nil であった場合は nil を返します。

- **param** `key` -- キーを任意個指定します。

```ruby title="例"
klass = Struct.new(:a)
o = klass.new(klass.new({b: [1, 2, 3]}))

p o.dig(:a, :a, :b, 0)            # => 1
p o.dig(:b, 0)                    # => nil
```

- **SEE** [Array#dig](../../../method/Array/i/dig.md), [Hash#dig](../../../method/Hash/i/dig.md), [OpenStruct#dig](../../../method/OpenStruct/i/dig.md)
