# class UncaughtThrowError < ArgumentError

[Kernel?.throw](../method/Kernel/m/throw.md) に指定した tag に対して一致する
[Kernel?.catch](../method/Kernel/m/catch.md) が存在しない場合に発生します。

```ruby
throw "foo", "bar"
# ~> UncaughtThrowError: uncaught throw "foo"
```

## Instance Methods

- [tag](../method/UncaughtThrowError/i/tag.md)
- [to_s](../method/UncaughtThrowError/i/to_s.md)
- [value](../method/UncaughtThrowError/i/value.md)
