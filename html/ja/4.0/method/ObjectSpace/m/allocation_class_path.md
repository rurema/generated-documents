# ObjectSpace?.allocation_class_path

### module_function def allocation_class_path(object) -> String | nil

objectの元となったクラスのパス(クラス名)を返します。

- **param** `object` -- 元となるクラスのパスを取得したいobjectを指定します。
- **return** -- objectの元となるクラスのパスを返します。存在しない場合はnilを返します。

```ruby title="例"
require 'objspace'

class A
  def foo
    ObjectSpace.trace_object_allocations do
      obj = Object.new
      p ObjectSpace.allocation_class_path(obj)
    end
  end
end

A.new.foo
# => "Class"
```

- **SEE** [ObjectSpace?.trace_object_allocations_start](../../../method/ObjectSpace/m/trace_object_allocations_start.md),
     [ObjectSpace?.trace_object_allocations_stop](../../../method/ObjectSpace/m/trace_object_allocations_stop.md)
