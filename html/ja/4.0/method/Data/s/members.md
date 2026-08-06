# Data.members

### def Data.members -> [Symbol]

値オブジェクトのメンバの名前([Symbol](../../../class/Symbol.md))の配列を返します。

```ruby title="例"
Foo = Data.define(:foo, :bar)
p Foo.members      # => [:foo, :bar]
```
