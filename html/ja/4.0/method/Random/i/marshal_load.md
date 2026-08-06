# Random#marshal_load

### def marshal_load(array) -> Random

[Random#marshal_dump](../../../method/Random/i/marshal_dump.md) で得られた配列を基に、Randomオブジェクトを復元します。

- **param** `array` -- 三要素以下からなる配列を指定します。
             何を指定するかは[Random#marshal_dump](../../../method/Random/i/marshal_dump.md)を参考にしてください。

- **raise** `ArgumentError` -- array が3より大きい場合に発生します。

```ruby title="例"
r1 = Random.new(1)
a1 = r1.marshal_dump
r2 = Random.new(3)
r3 = r2.marshal_load(a1)

p r1 == r2 # => true
p r1 == r3 # => true
```

- **SEE** [Random#marshal_dump](../../../method/Random/i/marshal_dump.md)
