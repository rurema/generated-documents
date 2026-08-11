# GC.measure_total_time=

### def GC.measure_total_time -> bool
### def GC.measure_total_time=(flag)

GC にかかった時間を計測するかどうかを取得、設定します。
既定では計測が有効です。

計測を有効にすると GC のたびに時間を測るため、わずかに実行速度が落ちます。

- **param** `flag` -- nil または false を指定すると計測を無効にします。
           それ以外の値を指定すると有効にします。
- **return** -- measure_total_time は計測が有効なら true を、無効なら false を返します。

```ruby
p GC.measure_total_time # => true

GC.measure_total_time = false
p GC.measure_total_time # => false

GC.measure_total_time = nil
p GC.measure_total_time # => false
```

- **SEE** [GC.total_time](../../../method/GC/s/total_time.md)
