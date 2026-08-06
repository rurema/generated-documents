# GC::Profiler.disable

### def GC::Profiler.disable -> nil

GC のプロファイラを停止します。

```ruby title="例"
GC::Profiler.disable
p GC::Profiler.enabled? #=> false
```

このメソッドでは、蓄積したプロファイル情報は破棄しません。
破棄したい場合は [GC::Profiler.clear](../../../method/GC=3a=3aProfiler/s/clear.md) を呼び出してください。

- **SEE** [GC::Profiler.enable](../../../method/GC=3a=3aProfiler/s/enable.md), [GC::Profiler.enabled?](../../../method/GC=3a=3aProfiler/s/enabled=3f.md)
