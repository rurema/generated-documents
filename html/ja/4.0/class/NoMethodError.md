# class NoMethodError < NameError

定義されていないメソッドの呼び出しが行われたときに発生します。

```ruby title="例"
self.bar
# => -:1: undefined method 'bar' for main (NoMethodError)
```

プライベートなインスタンスメソッドを呼び出そうとした場合にも発生します。

```ruby title="例"
"".puts
# => -:1:in '<main>': private method 'puts' called for an instance of String (NoMethodError)
```

メソッド呼び出しの形式でなければ [NameError](../class/NameError.md) 例外が発生します。

```ruby title="例"
bar
# => -:1: undefined local variable or method 'bar' for main (NameError)
```

## Class Methods

- [new](../method/NoMethodError/s/new.md)

## Instance Methods

- [args](../method/NoMethodError/i/args.md)
- [private_call?](../method/NoMethodError/i/private_call=3f.md)
