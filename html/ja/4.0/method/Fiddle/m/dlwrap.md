# Fiddle?.dlwrap

### module_function def dlwrap(obj)    -> Integer

指定されたオブジェクト obj のアドレスを表す整数を返します。

- **param** `obj` -- Ruby のオブジェクトを指定します。

```ruby title="例"
require 'fiddle'
s = 'abc'
p addr = Fiddle.dlwrap(s)   #=> 136122440
p Fiddle.dlunwrap(addr)     #=> "abc"
```
