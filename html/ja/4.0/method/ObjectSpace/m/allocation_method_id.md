# ObjectSpace?.allocation_method_id

### module_function def allocation_method_id(object) -> Symbol | nil

objectの元となったメソッド名を返します。

- **param** `object` -- 元となるメソッド名を取得したいobjectを指定します。
- **return** -- objectの元となるメソッド名を返します。存在しない場合はnilを返します。

```ruby title="例"
require 'objspace'

class A
  include ObjectSpace

  def foo
    trace_object_allocations do
      obj = Object.new
      p "#{allocation_class_path(obj)}##{allocation_method_id(obj)}"
    end
  end
end

A.new.foo
# => "A#foo"
```

- **SEE** [ObjectSpace?.trace_object_allocations_start](../../../method/ObjectSpace/m/trace_object_allocations_start.md),
     [ObjectSpace?.trace_object_allocations_stop](../../../method/ObjectSpace/m/trace_object_allocations_stop.md)
