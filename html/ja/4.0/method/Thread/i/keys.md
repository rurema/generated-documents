# Thread#keys

### def keys    -> [Symbol]

スレッド固有データに関連づけられたキーの配列を返します。キーは
[Symbol](../../../class/Symbol.md) で返されます。

```ruby
th = Thread.current
th[:foo] = 'FOO'
th['bar'] = 'BAR'
p th.keys

# => [:bar, :foo]
```
