# ObjectSpace?.allocation_generation

### module_function def allocation_generation(object) -> Integer | nil

objectが生成されたときのガベージコレクタの実行回数([GC.count](../../../method/GC/s/count.md) が返す値と同じもの)を返します。

- **param** `object` -- 生成時のガベージコレクタの実行回数を取得したいobjectを指定します。
- **return** -- objectが生成されたときのガベージコレクタの実行回数を返します。存在しない場合はnilを返します。

```ruby title="例"
require 'objspace'

class B
  include ObjectSpace

  def foo
    trace_object_allocations do
      obj = Object.new
      p "Generation is #{allocation_generation(obj)}"
    end
  end
end

B.new.foo
# => "Generation is 4"
```

- **SEE** [ObjectSpace?.trace_object_allocations_start](../../../method/ObjectSpace/m/trace_object_allocations_start.md),
     [ObjectSpace?.trace_object_allocations_stop](../../../method/ObjectSpace/m/trace_object_allocations_stop.md)
