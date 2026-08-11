# GC::Profiler.enable

### def GC::Profiler.enable -> nil

GC のプロファイラを起動します。

このメソッドを呼び出してから GC が発生すると、
GC についてプロファイル情報を取得します。

```ruby title="例"
GC::Profiler.enable
p GC::Profiler.enabled? # => true
```

- **SEE** [GC::Profiler.disable](../../../method/GC=3a=3aProfiler/s/disable.md), [GC::Profiler.enabled?](../../../method/GC=3a=3aProfiler/s/enabled=3f.md)
