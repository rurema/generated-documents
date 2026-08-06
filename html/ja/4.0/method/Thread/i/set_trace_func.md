# Thread#set_trace_func

### def set_trace_func(pr) -> Proc | nil
{: since="1.9.2"}

スレッドにトレース用ハンドラを設定します。

nil を渡すとトレースを解除します。

設定したハンドラを返します。

```ruby title="例"
th = Thread.new do
  class Trace
  end
  2.to_s
  Thread.current.set_trace_func nil
  3.to_s
end
th.set_trace_func lambda {|*arg| p arg }
th.join

# => ["line", "example.rb", 2, nil, #<Binding:0x00007fc8de87cb08>, nil]
# => ["c-call", "example.rb", 2, :inherited, #<Binding:0x00007fc8de886770>, Class]
# => ["c-return", "example.rb", 2, :inherited, #<Binding:0x00007fc8de8844e8>, Class]
# => ["class", "example.rb", 2, nil, #<Binding:0x00007fc8de88e830>, nil]
# => ["end", "example.rb", 3, nil, #<Binding:0x00007fc8de88d6b0>, nil]
# => ["line", "example.rb", 4, nil, #<Binding:0x00007fc8de88c440>, nil]
# => ["c-call", "example.rb", 4, :to_s, #<Binding:0x00007fc8de896f30>, Integer]
# => ["c-return", "example.rb", 4, :to_s, #<Binding:0x00007fc8de894a50>, Integer]
# => ["line", "example.rb", 5, nil, #<Binding:0x00007fc8de967b08>, nil]
# => ["c-call", "example.rb", 5, :current, #<Binding:0x00007fc8de967798>, Thread]
# => ["c-return", "example.rb", 5, :current, #<Binding:0x00007fc8de9673b0>, Thread]
# => ["c-call", "example.rb", 5, :set_trace_func, #<Binding:0x00007fc8de966fc8>, Thread]
```

- **param** `pr` -- トレースハンドラ([Proc](../../../class/Proc.md) オブジェクト) もしくは nil
- **SEE** [Thread#add_trace_func](../../../method/Thread/i/add_trace_func.md) [Kernel?.set_trace_func](../../../method/Kernel/m/set_trace_func.md)
