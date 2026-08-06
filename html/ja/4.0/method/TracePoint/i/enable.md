# TracePoint#enable

### def enable         -> bool
### def enable { ... } -> object

self のトレースを有効にします。

実行前の [TracePoint#enabled?](../../../method/TracePoint/i/enabled=3f.md) を返します。(トレースが既に有効であった場合は true を返します。そうでなければ false を返します)

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

[注意] イベントフックのためのメソッドにブロックの外側で参照した場合は
[RuntimeError](../../../class/RuntimeError.md) が発生する事に注意してください。

```ruby title="例"
trace.enable { p trace.lineno } # ~> RuntimeError: access from outside
```

- **SEE** [TracePoint#disable](../../../method/TracePoint/i/disable.md), [TracePoint#enabled?](../../../method/TracePoint/i/enabled=3f.md)
