# ObjectSpace?.allocation_sourceline

### module_function def allocation_sourceline(object) -> Integer | nil

objectの元となったソースファイルの行番号を返します。

- **param** `object` -- 元となるソースファイルの行番号を取得したいobjectを指定します。
- **return** -- objectの元となるソースファイルの行番号を返します。存在しない場合はnilを返します。

```ruby title="例"
require 'objspace'

ObjectSpace.trace_object_allocations_start
obj = Object.new
puts "line:#{ObjectSpace.allocation_sourceline(obj)}"  # => line:4
ObjectSpace.trace_object_allocations_stop
```

- **SEE** [ObjectSpace?.trace_object_allocations_start](../../../method/ObjectSpace/m/trace_object_allocations_start.md),
     [ObjectSpace?.trace_object_allocations_stop](../../../method/ObjectSpace/m/trace_object_allocations_stop.md)
