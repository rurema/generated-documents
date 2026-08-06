# ObjectSpace?.allocation_sourcefile

### module_function def allocation_sourcefile(object) -> String | nil

objectの元となったソースファイル名を返します。

- **param** `object` -- 元となるソースファイル名を取得したいobjectを指定します。
- **return** -- objectの元となるソースファイル名を返します。存在しない場合はnilを返します。

```ruby title="例:test.rbというファイルで下記のスクリプトを実行した場合"
require 'objspace'

ObjectSpace.trace_object_allocations_start
obj = Object.new
puts "file:#{ObjectSpace.allocation_sourcefile(obj)}"   # => file:test.rb
ObjectSpace.trace_object_allocations_stop
```

- **SEE** [ObjectSpace?.trace_object_allocations_start](../../../method/ObjectSpace/m/trace_object_allocations_start.md),
     [ObjectSpace?.trace_object_allocations_stop](../../../method/ObjectSpace/m/trace_object_allocations_stop.md)
