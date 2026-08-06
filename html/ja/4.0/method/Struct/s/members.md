# Struct.members

### def Struct.members -> [Symbol]

(このメソッドは Struct の下位クラスにのみ定義されています)
構造体のメンバの名前([Symbol](../../../class/Symbol.md))の配列を返します。

```ruby title="例"
Foo = Struct.new(:foo, :bar)
p Foo.members      # => [:foo, :bar]
```
