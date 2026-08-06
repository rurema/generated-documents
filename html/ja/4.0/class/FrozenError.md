# class FrozenError < RuntimeError

[Object#freeze](../method/Object/i/freeze.md)されたオブジェクトを変更しようとした時に発生します。

```ruby title="例"
[1, 2, 3].freeze << 4 # FrozenError: can't modify frozen Array
```

## Class Methods

- [new](../method/FrozenError/s/new.md)

## Instance Methods

- [receiver](../method/FrozenError/i/receiver.md)
