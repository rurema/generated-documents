# GC::Profiler.enabled?

### def GC::Profiler.enabled? -> bool

GC のプロファイラを起動中であれば true、停止中であれば false を返します。

```ruby title="例"
p GC::Profiler.enabled? # => false
GC::Profiler.enable
p GC::Profiler.enabled? # => true
GC::Profiler.disable
p GC::Profiler.enabled? # => false
```

- **SEE** [GC::Profiler.enable](../../../method/GC=3a=3aProfiler/s/enable.md), [GC::Profiler.disable](../../../method/GC=3a=3aProfiler/s/disable.md)
