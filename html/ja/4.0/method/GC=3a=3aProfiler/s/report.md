# GC::Profiler.report

### def GC::Profiler.report(out = $stdout) -> nil

[GC::Profiler.result](../../../method/GC=3a=3aProfiler/s/result.md) の結果を out に出力します。

- **param** `out` -- 結果の出力先を指定します。デフォルトは $stdout です。

```ruby title="例"
GC::Profiler.enable
GC.start
GC::Profiler.report

# => GC 4 invokes.
# Index    Invoke Time(sec)       Use Size(byte)     Total Size(byte)         Total Object                    GC Time(ms)
#     1               0.019               303720              1269840                31746         1.25899999999999967493
```

- **SEE** [GC::Profiler.result](../../../method/GC=3a=3aProfiler/s/result.md)
