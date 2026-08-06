# TracePoint#binding

### def binding -> Binding | nil

発生したイベントによって生成された [Binding](../../../class/Binding.md) オブジェクトを返します。

C で記述されたメソッドは binding を生成しないため、
:c_call および :c_return イベントに対しては nil を返すことに注意してください。

```ruby title="例"
def foo(ret)
  ret
end
trace = TracePoint.new(:call) do |tp|
  p tp.binding.local_variables # => [:ret]
end
trace.enable
foo 1
```
