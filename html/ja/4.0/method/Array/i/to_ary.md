# Array#to_ary

### def to_ary  -> self

self をそのまま返します。

```ruby title="例"
class SubArray < Array; end
ary1 = Array([1, 2, 3, 4])
ary2 = SubArray([1, 2, 3, 4])

p ary1.to_ary      # => [1, 2, 3, 4]
p ary1.to_ary.class  # => Array

p ary2.to_ary      # => [1, 2, 3, 4]
p ary2.to_ary.class  # => SubArray
```

- **SEE** [Array#to_a](../../../method/Array/i/to_a.md)
