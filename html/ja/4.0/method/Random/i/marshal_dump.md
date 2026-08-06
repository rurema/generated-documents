# Random#marshal_dump

### def marshal_dump -> Array

[Random#marshal_load](../../../method/Random/i/marshal_load.md) で復元可能な配列を返します。

```ruby title="例"
r1 = Random.new(1)
a1 = r1.marshal_dump
r2 = Random.new(3)
p r1 == r2 # => false
r3 = r2.marshal_load(a1)

p r1 == r2 # => true
p r1 == r3 # => true
```
