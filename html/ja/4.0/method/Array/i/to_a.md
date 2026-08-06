# Array#to_a

### def to_a       -> Array

self を返します。ただし、Array のサブクラスのインスタンスに対して呼ばれた時は、自身を Array に変換したものを返します。

```ruby title="例"
class SubArray < Array; end
ary1 = Array([1, 2, 3, 4])
ary2 = SubArray([1, 2, 3, 4])

p ary1.to_a      # => [1, 2, 3, 4]
p ary1.to_a.class  # => Array

p ary2.to_a      # => [1, 2, 3, 4]
p ary2.to_a.class  # => Array
```

- **SEE** [Array#to_ary](../../../method/Array/i/to_ary.md)
