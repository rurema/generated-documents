# TracePoint#parameters

### def parameters -> [object]

現在のフックが属するメソッドまたはブロックのパラメータ定義を返します。
フォーマットは [Method#parameters](../../../method/Method/i/parameters.md) と同じです。

- **raise** `RuntimeError` -- :call、:return、:b_call、:b_return、:c_call、:c_return
                    イベントのためのイベントフックの外側で実行した場合に発生します。

```ruby title="例"
def foo(a, b = 2)
end
TracePoint.new(:call) do |tp|
  p tp.parameters # => [[:req, :a], [:opt, :b]]
end.enable do
  foo(1)
end
```

- **SEE** [Method#parameters](../../../method/Method/i/parameters.md), [UnboundMethod#parameters](../../../method/UnboundMethod/i/parameters.md), [Proc#parameters](../../../method/Proc/i/parameters.md)
