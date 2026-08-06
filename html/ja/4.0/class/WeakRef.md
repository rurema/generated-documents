# class WeakRef < Delegator

weak reference を実現するクラスです。

[WeakRef](../class/WeakRef.md) オブジェクトは与えられたオブジェクトをポイントしますが、ポイント先のオブジェクトは GC される可能性があります。
アクセスしようとしたときにオブジェクトが GC されていれば
[WeakRef::RefError](../class/WeakRef=3a=3aRefError.md) が発生します。

[delegate](../library/delegate.md) も参照してください。

### サンプルコード

```ruby
require 'weakref'

foo = Object.new
ref = WeakRef.new(foo)
ref.some_method_of_foo
```

## Class Methods

- [new](../method/WeakRef/s/new.md)

## Instance Methods

- [__getobj__](../method/WeakRef/i/__getobj__.md)
- [__setobj__](../method/WeakRef/i/__setobj__.md)
- [weakref_alive?](../method/WeakRef/i/weakref_alive=3f.md)
