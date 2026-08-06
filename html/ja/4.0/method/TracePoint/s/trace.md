# TracePoint.trace

### def TracePoint.trace(*events) {|obj| ... } -> TracePoint

新しい [TracePoint](../../../class/TracePoint.md) オブジェクトを作成して自動的にトレースを開始します。[TracePoint.new](../../../method/TracePoint/s/new.md) のコンビニエンスメソッドです。

- **param** `events` -- トレースするイベントを [String](../../../class/String.md) か [Symbol](../../../class/Symbol.md) で任
              意の数指定します。指定できる値については
              [TracePoint.new](../../../method/TracePoint/s/new.md) を参照してください。

```ruby title="例"
trace = TracePoint.trace(:call) { |tp| [tp.lineno, tp.event] }
# => #<TracePoint:0x007f786a452448>

p trace.enabled? # => true
```

- **raise** `ThreadError` -- ブロックを指定しなかった場合に発生します。
