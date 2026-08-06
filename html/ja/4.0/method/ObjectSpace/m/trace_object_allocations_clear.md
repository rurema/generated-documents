# ObjectSpace?.trace_object_allocations_clear

### module_function def trace_object_allocations_clear -> nil

記録されているオブジェクト割り当てのトレース情報をクリアします。

トレースの有効/無効の状態には触れません。トレースを有効にしたまま呼び出すと、それ以降のオブジェクト割り当てが引き続き記録されます。

```ruby title="例"
require 'objspace'

ObjectSpace.trace_object_allocations_start
obj = Object.new
p ObjectSpace.allocation_sourceline(obj) # => 4
ObjectSpace.trace_object_allocations_clear
p ObjectSpace.allocation_sourceline(obj) # => nil

ObjectSpace.trace_object_allocations_stop
```

- **SEE** [ObjectSpace?.trace_object_allocations_start](../../../method/ObjectSpace/m/trace_object_allocations_start.md),
     [ObjectSpace?.trace_object_allocations_stop](../../../method/ObjectSpace/m/trace_object_allocations_stop.md)
