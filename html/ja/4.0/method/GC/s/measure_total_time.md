# GC.measure_total_time

### def GC.measure_total_time -> bool

GC にかかった時間を計測するかどうかを返します。
既定では計測が有効です。

- **return** -- 計測が有効なら true を、無効なら false を返します。

```ruby
p GC.measure_total_time # => true
```

- **SEE** [GC.total_time](../../../method/GC/s/total_time.md), [GC.measure_total_time=](../../../method/GC/s/measure_total_time=3d.md)
