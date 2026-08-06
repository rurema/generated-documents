# TracePoint#defined_class

### def defined_class -> Class | module

メソッドを定義したクラスかモジュールを返します。

```ruby title="例"
class C; def foo; end; end
trace = TracePoint.new(:call) do |tp|
  p tp.defined_class # => C
end.enable do
  C.new.foo
end
```

メソッドがモジュールで定義されていた場合も(include に関係なく)モジュールを返します。

```ruby title="例"
module M; def foo; end; end
class C; include M; end;
trace = TracePoint.new(:call) do |tp|
  p tp.defined_class # => M
end.enable do
  C.new.foo
end
```

[注意] 特異メソッドを実行した場合は TracePoint#defined_class は特異クラスを返します。また、[Kernel?.set_trace_func](../../../method/Kernel/m/set_trace_func.md) の 6 番目のブロックパラメータは特異クラスではなく元のクラスを返します。

```ruby title="例"
class C; def self.foo; end; end
trace = TracePoint.new(:call) do |tp|
  p tp.defined_class # => #<Class:C>
end.enable do
  C.foo
end
```

[Kernel?.set_trace_func](../../../method/Kernel/m/set_trace_func.md) と [TracePoint](../../../class/TracePoint.md) の上記の差分に注意してください。

- **SEE** [ruby-core:50864]
