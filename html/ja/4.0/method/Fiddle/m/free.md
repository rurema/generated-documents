# Fiddle?.free

### module_function def free(addr)      -> nil

指定された addr が指すメモリ領域を開放します。

必ず [Fiddle?.malloc](../../../method/Fiddle/m/malloc.md) が返した整数を addr に与えなければいけません。
そうでない場合、ruby インタプリタが異常終了します。

- **param** `addr` -- [Fiddle?.malloc](../../../method/Fiddle/m/malloc.md) で確保されたメモリ領域を指す整数を指定します。

```ruby title="例"
require 'fiddle'
addr = Fiddle.malloc(10)
p addr               # => 136942800
Fiddle.free(addr)
```
