# class Thread::Backtrace::Location < Object

Ruby のフレームを表すクラスです。

[Kernel?.caller_locations](../method/Kernel/m/caller_locations.md) から生成されます。

```ruby title="例1"
# caller_locations.rb
def a(skip)
  caller_locations(skip)
end
def b(skip)
  a(skip)
end
def c(skip)
  b(skip)
end

c(0..2).map do |call|
  puts call.to_s
end
```

```text title="例1の実行結果"
caller_locations.rb:2:in 'a'
caller_locations.rb:5:in 'b'
caller_locations.rb:8:in 'c'
```

```ruby title="例2"
# foo.rb
class Foo
  attr_accessor :locations
  def initialize(skip)
    @locations = caller_locations(skip)
  end
end

Foo.new(0..2).locations.map do |call|
  puts call.to_s
end
```

```text title="例2の実行結果"
init.rb:4:in 'initialize'
init.rb:8:in 'new'
init.rb:8:in '<main>'
```

### 参考

- Ruby VM アドベントカレンダー #4 vm_backtrace.c: <https://www.atdot.net/~ko1/diary/201212.html#d4>

## Instance Methods

- [absolute_path](../method/Thread=3a=3aBacktrace=3a=3aLocation/i/absolute_path.md)
- [base_label](../method/Thread=3a=3aBacktrace=3a=3aLocation/i/base_label.md)
- [inspect](../method/Thread=3a=3aBacktrace=3a=3aLocation/i/inspect.md)
- [label](../method/Thread=3a=3aBacktrace=3a=3aLocation/i/label.md)
- [lineno](../method/Thread=3a=3aBacktrace=3a=3aLocation/i/lineno.md)
- [path](../method/Thread=3a=3aBacktrace=3a=3aLocation/i/path.md)
- [to_s](../method/Thread=3a=3aBacktrace=3a=3aLocation/i/to_s.md)
