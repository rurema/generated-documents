# class TracePoint < Object

[Kernel?.set_trace_func](../method/Kernel/m/set_trace_func.md) と同様の機能をオブジェクト指向的な API で提供するクラスです。

```ruby title="例:例外に関する情報を収集する"
trace = TracePoint.new(:raise) do |tp|
  p [tp.lineno, tp.event, tp.raised_exception]
end
# => #<TracePoint:0x007f786a452448>

p trace.enable
# => false

0 / 0
# => [5, :raise, #<ZeroDivisionError: divided by 0>]
```

[TracePoint.new](../method/TracePoint/s/new.md) または、[TracePoint.trace](../method/TracePoint/s/trace.md) で指定したブロックは、メソッドの引数(上記の例では :raise)に対応するイベントが発生した時に呼び出されます。

発生するイベントの詳細については、[TracePoint.new](../method/TracePoint/s/new.md) を参照してください。

### 参考

- Ruby VM アドベントカレンダー #12 TracePoint の紹介 (1): <https://www.atdot.net/~ko1/diary/201212.html#d12>
- Ruby VM アドベントカレンダー #13 TracePoint の紹介 (2): <https://www.atdot.net/~ko1/diary/201212.html#d13>
- Ruby VM アドベントカレンダー #14 TracePoint の紹介 (3): <https://www.atdot.net/~ko1/diary/201212.html#d14>

## Class Methods

- [allow_reentry](../method/TracePoint/s/allow_reentry.md)
- [new](../method/TracePoint/s/new.md)
- [stat](../method/TracePoint/s/stat.md)
- [trace](../method/TracePoint/s/trace.md)

## Instance Methods

- [binding](../method/TracePoint/i/binding.md)
- [callee_id](../method/TracePoint/i/callee_id.md)
- [defined_class](../method/TracePoint/i/defined_class.md)
- [disable](../method/TracePoint/i/disable.md)
- [enable](../method/TracePoint/i/enable.md)
- [enabled?](../method/TracePoint/i/enabled=3f.md)
- [eval_script](../method/TracePoint/i/eval_script.md)
- [event](../method/TracePoint/i/event.md)
- [inspect](../method/TracePoint/i/inspect.md)
- [instruction_sequence](../method/TracePoint/i/instruction_sequence.md)
- [lineno](../method/TracePoint/i/lineno.md)
- [method_id](../method/TracePoint/i/method_id.md)
- [parameters](../method/TracePoint/i/parameters.md)
- [path](../method/TracePoint/i/path.md)
- [raised_exception](../method/TracePoint/i/raised_exception.md)
- [return_value](../method/TracePoint/i/return_value.md)
- [self](../method/TracePoint/i/self.md)
