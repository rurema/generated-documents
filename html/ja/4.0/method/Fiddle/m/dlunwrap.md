# Fiddle?.dlunwrap

### module_function def dlunwrap(addr)  -> object

指定されたアドレスの Ruby オブジェクトを返します。

- **param** `addr` -- [Fiddle?.dlwrap](../../../method/Fiddle/m/dlwrap.md) が返した Ruby オブジェクトのアドレス(整数)を指定します。

```ruby title="例"
require 'fiddle'
s = 'abc'
p addr = Fiddle.dlwrap(s)   #=> 136122440
p Fiddle.dlunwrap(addr)     #=> "abc"
```
