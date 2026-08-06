# TracePoint#event

### def event -> Symbol

発生したイベントの種類を [Symbol](../../../class/Symbol.md) で返します。

発生するイベントの詳細については、[TracePoint.new](../../../method/TracePoint/s/new.md) を参照してください。

- **raise** `RuntimeError` -- イベントフックの外側で実行した場合に発生します。

```ruby title="例"
def foo(ret)
  ret
end
trace = TracePoint.new(:call, :return) do |tp|
  p tp.event
end
trace.enable
p foo 1
# => :call
# :return
```
