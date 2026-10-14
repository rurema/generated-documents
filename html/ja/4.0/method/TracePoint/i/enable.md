# TracePoint#enable

### def enable(target: nil, target_line: nil, target_thread: nil)         -> bool
### def enable(target: nil, target_line: nil, target_thread: nil) { ... } -> object

self のトレースを有効にします。

実行前の [TracePoint#enabled?](../../../method/TracePoint/i/enabled=3f.md) を返します。(トレースが既に有効であった場合は true を返します。そうでなければ false を返します)

- **param** `target` -- [Method](../../../class/Method.md)、[UnboundMethod](../../../class/UnboundMethod.md)、[Proc](../../../class/Proc.md)、[RubyVM::InstructionSequence](../../../class/RubyVM=3a=3aInstructionSequence.md) のいずれかを指定します。
  指定すると、その内部で起きるイベントだけをフックします。
- **param** `target_line` -- `target` と組み合わせて指定します。その行番号の `:line` イベントだけをフックします。
- **param** `target_thread` -- 指定したスレッドで起きるイベントだけをフックします。
  ブロックが与えられ、`target` も `target_line` も指定されていない場合、デフォルトは現在のスレッド([Thread.current](../../../method/Thread/s/current.md))になります。
- **raise** `ArgumentError` -- `target` を指定せずに `target_line` だけを指定した場合、または `target_line` を指定したのに `:line` イベントがフック対象に含まれていない場合に発生します。

```ruby title="例"
p trace.enabled?  # => false
p trace.enable  # => false (実行前の状態)

# トレースが有効

p trace.enabled?  # => true
p trace.enable  # => true (実行前の状態)

# 引き続きトレースが有効
```

ブロックが与えられた場合、ブロック内でのみトレースが有効になります。
この場合はブロックの評価結果を返します。

```ruby title="例"
p trace.enabled? # => false

trace.enable do
  p trace.enabled? # => true
end

p trace.enabled? # => false
```

```ruby title="例: target を指定"
def foo; 1; end
def bar; 2; end
tp = TracePoint.new(:call) {|t| puts "call #{t.method_id}" }
tp.enable(target: method(:foo)) { foo; bar; 1 }  # => 1
# 出力は "call foo" だけ(bar は対象外)
```

[注意] イベントフックのためのメソッドにブロックの外側で参照した場合は
[RuntimeError](../../../class/RuntimeError.md) が発生する事に注意してください。

```ruby title="例"
trace.enable { p trace.lineno } # ~> RuntimeError: access from outside
```

- **SEE** [TracePoint#disable](../../../method/TracePoint/i/disable.md), [TracePoint#enabled?](../../../method/TracePoint/i/enabled=3f.md)
