# GC::Profiler.clear

### def GC::Profiler.clear -> nil

蓄積している GC のプロファイル情報をすべて削除します。

```ruby title="例"
GC::Profiler.enable
GC.start
GC.start
p GC::Profiler.report #=> 2 回分の GC のプロファイル情報出力する。
GC::Profiler.clear
GC.start
p GC::Profiler.report #=> 1 回分の GC のプロファイル情報出力する。
```
