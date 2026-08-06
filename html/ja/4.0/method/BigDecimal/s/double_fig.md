# BigDecimal.double_fig

### def BigDecimal.double_fig -> Integer

Ruby の [Float](../../../class/Float.md) クラスが保持できる有効数字の数を返します。

```ruby
require 'bigdecimal'
p BigDecimal::double_fig  # ==> 16 (depends on the CPU etc.)
```

double_figは以下の C プログラムの結果と同じです。

```c
double v = 1.0;
int double_fig = 0;
while (v + 1.0 > 1.0) {
   ++double_fig;
   v /= 10;
}
```
