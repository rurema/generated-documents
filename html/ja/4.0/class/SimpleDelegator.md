# class SimpleDelegator < Delegator

[Delegator](../class/Delegator.md) クラスを継承し、シンプルなメソッド委譲を実現した具象クラス。

委譲先に指定されたオブジェクトへメソッドの実行を委譲します。

```ruby title="例"
require 'delegate'

foo = Object.new
def foo.test
  p 25
end
foo2 = SimpleDelegator.new(foo)
p foo2.test # => 25
```

## Class Methods

- [new](../method/SimpleDelegator/s/new.md)

## Instance Methods

- [__getobj__](../method/SimpleDelegator/i/__getobj__.md)
- [__setobj__](../method/SimpleDelegator/i/__setobj__.md)
