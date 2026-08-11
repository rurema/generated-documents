# TracePoint#instruction_sequence

### def instruction_sequence -> RubyVM::InstructionSequence

script_compiledイベント発生時にコンパイルされた
RubyVM::InstructionSequenceインスタンスを返します。

```ruby title="例"
TracePoint.new(:script_compiled) do |tp|
  p tp.instruction_sequence # => <RubyVM::InstructionSequence:block in <main>@(eval):1>
end.enable do
  eval("puts 'hello'")
end
```

- **raise** `RuntimeError` -- :script_compiled イベントのためのイベントフックの外側で実行した場合に発生します。
