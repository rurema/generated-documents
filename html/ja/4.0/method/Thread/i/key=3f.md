# Thread#key?

### def key?(name)     -> bool

name に対応したスレッドに固有のデータが定義されていれば
true を返します。

- **param** `name` -- 文字列か [Symbol](../../../class/Symbol.md) で指定します。

```ruby title="例"
me = Thread.current
me[:oliver] = "a"
p me.key?(:oliver)  # => true
p me.key?(:stanley) # => false
```
